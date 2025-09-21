SELECT `date`
FROM layoffs_staging_two
WHERE `date` IS NULL
   OR `date` = '';

UPDATE layoffs_staging_two
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

ALTER TABLE layoffs_staging_two
MODIFY COLUMN `date` DATE;
