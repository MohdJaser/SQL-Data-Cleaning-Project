SELECT * FROM layoffs_staging_two
WHERE (total_laid_off IS NULL OR total_laid_off = ' ')
  AND (percentage_laid_off IS NULL OR percentage_laid_off = ' ');

SELECT * FROM layoffs_staging_two
WHERE industry IS NULL
   OR industry = '';

SELECT * FROM layoffs_staging_two
WHERE company = "Airbnb";

UPDATE layoffs_staging_two
SET industry = NULL
WHERE industry = '';

UPDATE layoffs_staging_two t1
JOIN layoffs_staging_two t2
  ON t1.company = t2.company
SET t1.industry = t2.industry
WHERE t1.industry IS NULL
  AND t2.industry IS NOT NULL;

SELECT * FROM layoffs_staging_two
WHERE total_laid_off IS NULL
  AND percentage_laid_off IS NULL;

DELETE FROM layoffs_staging_two
WHERE total_laid_off IS NULL
  AND percentage_laid_off IS NULL;
