SELECT * FROM layoffs;

CREATE TABLE layoffs_staging_one
SELECT * FROM layoffs;

SELECT * FROM layoffs_staging_one;

SELECT *,
ROW_NUMBER() OVER (
  PARTITION BY company, location, industry, total_laid_off, percentage_laid_off,
               `date`, stage, country, funds_raised_millions
) AS row_num
FROM layoffs_staging_one;

WITH cte_example AS (
  SELECT *,
  ROW_NUMBER() OVER (
    PARTITION BY company, location, industry, total_laid_off, percentage_laid_off,
                 `date`, stage, country, funds_raised_millions
  ) AS row_num
  FROM layoffs_staging_one
)
SELECT * FROM cte_example
WHERE row_num > 1;

CREATE TABLE `layoffs_staging_two` (
  `company` TEXT,
  `location` TEXT,
  `industry` TEXT,
  `total_laid_off` INT DEFAULT NULL,
  `percentage_laid_off` TEXT,
  `date` TEXT,
  `stage` TEXT,
  `country` TEXT,
  `funds_raised_millions` INT DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT * FROM layoffs_staging_two;

INSERT INTO layoffs_staging_two
SELECT *,
ROW_NUMBER() OVER (
  PARTITION BY company, location, industry, total_laid_off, percentage_laid_off,
               `date`, stage, country, funds_raised_millions
) AS row_num
FROM layoffs_staging_one;

SELECT * FROM layoffs_staging_two
WHERE row_num > 1;

DELETE FROM layoffs_staging_two
WHERE row_num > 1;
