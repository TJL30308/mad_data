# mad_data

## Project
This project uses the principles of ETL to aggregate data from various sources to show relationships between alcohol consumption, traffic related deaths and wine reviews from [Winemag](https://www.winemag.com/).

## Contributors
* Jaime Echevarria - [Github](https://github.com/jaime030690)
* Alessio Caligaris - [Github](https://github.com/ac1093)
* Topias Lemetyinen - [Github](https://github.com/TJL30308)

## Data Sets

### Alcohol Consumption per Capita by Country

http://apps.who.int/gho/data/node.main.A1036

### Wine Production by Country
https://en.wikipedia.org/wiki/List_of_wine-producing_regions

### Traffic Related Deaths by Country
https://en.wikipedia.org/wiki/List_of_countries_by_traffic-related_death_rate

### Wine Reviews
https://www.kaggle.com/zynicide/wine-reviews#winemag-data-130k-v2.csv

## Extraction
- Alcohol Consumption data was extracted from World Health Organization webpage as a CSV file.
- WHO provided the rate of total per capita (15+) consumption (in litres of pure alcohol) with 95%CI
- Wine reviews were found on Kaggle and extracted as CSV.
- Traffic related deaths and wine production were pulled from Wikipedia tables onto Pandas dataframes.
- A country code table was created using PyCountry module then converted to dataframe. We used the [ISO-3166](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes) numeric codes to standardize this.

## Transform
- Alcohol consumption data was cleaned to remove 95%CI values from the rates such that the rates were isolated and accesible.
- Alcohol consumption data column headings were adjust for readability.
- All data tables had `country_id` retrieved from PyCountry module added for a common key. With the exception of the Reviews table, all tables had `country_id` as their primary key.
- Country names were not standardized. For example, *Venezuela* is officially called *the Bolivarian Republic of Venezuela*. We had to search for country names that did not match values from PyCountry and convert those names to that standard naming convention.
- The Wikipedia data tables had citations on the data values that had to be cleaned up.

## Load
- We chose to use a SQL database created with PosgreSQL. This is better suited for this data set as it has strict requirements for storing data. A NoSQL database would have been more appropriate if the data come from more disorganized sources.
- Using the database schema from QuickDBD lead to some errors, primarily dealing with `null` values in the data. We had to remove this constraint.
- By using SQLAlchemy we came across a few errors when non-numeric data types were imported to numeric columns. Corrections to the dataframes had to be made on the fly.
