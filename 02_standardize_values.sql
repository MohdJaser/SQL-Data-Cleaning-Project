SELECT DISTINCT industry FROM layoffs_staging_two;

SELECT DISTINCT industry
FROM layoffs_staging_two
WHERE industry LIKE 'Crypto%';

UPDATE layoffs_staging_two
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';
