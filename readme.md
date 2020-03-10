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
- Country ID codes were added to the WHO data table using PyCountry python module then converted to dataframe.

## Transform
- Alcohol consumption data was cleaned to remove 95%CI values from the rates such that the rates were isolated and accesible
- Alcohol consumption data column headings were adjust for readability
- All data tables had country_id retrieved from PyCountry module added for a common key. With the exception of the Reviews table, all tables had country_id as their primary key.
- Country names were not standardized. For example, *Venezuela* is officially called *the Bolivarian Republic of Venezuela*. We had to search for country names that did not match values from PyCountry and convert those names to that standard naming convention.

## Load
???
