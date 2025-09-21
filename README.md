SQL Data Cleaning Project :

This project focuses on cleaning and preparing real-world layoff data using **MySQL**.  
The goal was to transform raw, messy data into a structured and reliable format for analysis.



Project Steps :

1. Remove Duplicates :
- Used `ROW_NUMBER()` with `PARTITION BY` to identify duplicate records.
- Deleted duplicate rows while keeping the first occurrence.

2. Standardize Values :
- Standardized inconsistent entries (e.g., "Crypto Currency" → "Crypto").
- Fixed blank values (`''`) by replacing them with `NULL`.

3. Fix Dates :
- Converted string dates into proper `DATE` format using `STR_TO_DATE`.
- Ensured the column type was updated with `ALTER TABLE`.

4. Handle Nulls :
- Updated missing `industry` values via **self-joins** (company-based).
- Removed rows where both `total_laid_off` and `percentage_laid_off` were missing.

5. Create Final Clean Table :
- Built a final staging table `layoffs_staging_two` containing cleaned data ready for analysis.



Tools & Concepts Used :
- **MySQL Workbench**
- SQL Window Functions (`ROW_NUMBER()`)
- Data Cleaning Techniques:
  - Duplicate removal
  - Standardization
  - Handling nulls
  - Data type conversion


