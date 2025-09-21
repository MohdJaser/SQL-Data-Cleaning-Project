SQL Data Cleaning Project :



This project focuses on cleaning and preparing real-world layoff data using \*\*MySQL\*\*.  

The goal was to transform raw, messy data into a structured and reliable format for analysis.







Project Steps :



1\. Remove Duplicates :

\- Used `ROW\_NUMBER()` with `PARTITION BY` to identify duplicate records.

\- Deleted duplicate rows while keeping the first occurrence.



2\. Standardize Values :

\- Standardized inconsistent entries (e.g., "Crypto Currency" → "Crypto").

\- Fixed blank values (`''`) by replacing them with `NULL`.



3\. Fix Dates :

\- Converted string dates into proper `DATE` format using `STR\_TO\_DATE`.

\- Ensured the column type was updated with `ALTER TABLE`.



4\. Handle Nulls :

\- Updated missing `industry` values via \*\*self-joins\*\* (company-based).

\- Removed rows where both `total\_laid\_off` and `percentage\_laid\_off` were missing.



5\. Create Final Clean Table :

\- Built a final staging table `layoffs\_staging\_two` containing cleaned data ready for analysis.







Tools \& Concepts Used :

\- \*\*MySQL Workbench\*\*

\- SQL Window Functions (`ROW\_NUMBER()`)

\- Data Cleaning Techniques:

&nbsp; - Duplicate removal

&nbsp; - Standardization

&nbsp; - Handling nulls

&nbsp; - Data type conversion









