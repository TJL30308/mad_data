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
- Alcohol Consumption data was extracted from World Health Organization webpage. 
- WHO provided the rate of total per capita (15+) consumption (in litres of pure alcohol) with 95%CI

## Transform
- Alcohol consumption data was cleaned to remove 95%CI values from the rates such that the rates were isolated and accesible
- Alcohol consumption data column headings were adjust for readability
- Country ID codes were added to the WHO data table using PyCountry python module

## Load
???
