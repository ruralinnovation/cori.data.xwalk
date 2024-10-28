Start to understand the evolution of counties: 

References: [here](https://www.census.gov/programs-surveys/geography/technical-documentation/county-changes.2020.html#list-tab-957819518)

> Substantial county boundary changes are those affecting an estimated population of 200 or more; 
> changes of at least one square mile where an estimated population number was not available, 
> but research indicated that 200 or more people may have been affected; 
> and annexations of unpopulated territory of at least 10 square miles

Hence they are two conditions to motivate change in county boundary: 

  - change affectiing an estimated population of 200 or more
  
  - change affecting unpopulated territory of at least 10 square miles
  
If changes exist but do not match one of those conditions they will not be implemented. 

The older boundaries it seems we can get from Census is 1992.
They can be find here: https://www2.census.gov/geo/tiger/TIGER1992/ and are in the original TIGER/LINE format (GDAL has driver for it). Sadly some works need to be done to convert those LINEs into a merged polygones for census county boundary. GDAL used to come with `tigerpoly.py` for that (see: https://gdal.org/en/latest/api/python_samples.html#python-samples).  

> The TIGER/Line coordinate system is hardcoded to NAD83 lat/long degrees.

It is unclear how were the county in the 60'. 
We can check this [file](https://www2.census.gov/programs-surveys/metro-micro/geographies/reference-files/1960/historical-delineation-files/60mfips.txt)

So far the options are:

- a county has been fully incorporated in an other one 
- a county has been partially incorporated in multiple?

