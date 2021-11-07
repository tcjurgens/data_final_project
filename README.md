# data_final_project

## Christopher Mastrangelo
First feature branch- week one - data download and ETL in prep for exploratory data analysis stage

Some observations
 - In the future we might want to name branches after features instead of our names
 - I created my own /Resources folder to contain the CSV file(s) - one file so far for this first commit
 - When we merge the branches back into main we are going to have more than one folder with CSV files - we will need to decide on what to do about that
 - When I merge this branch with main, will my README file replace the other README or will they be merged/appended somehow? I guess we will find out 

### Steps so far - as of Saturday 11.6.2021

Here is a section of the dataframe created from importing the CSV file "Basic_stats.csv" from Kaggle NFL data.
This is just a table of player information which we might not need for the Machine Learning but could be a layer in one of the visualizations later.
![image](https://user-images.githubusercontent.com/86205000/140647104-caf87d59-5b48-498a-b429-be920fb38933.png)

I used this file because it was the first on the liston Kaggle.  Using it as an intial test to import, ETL, then upload to PostGres.
Example of ETL will be to drop columns with null values like age or high school.  Some columns may not be needed like birthday or age.
Example of where this could be used in dashboard is if we have a visualization with actual players, we can use this to display names.
The player_ID column might be useful if we do any additional webscraping from the same NFL source data.

Initially I will do all the steps using one file to get all the pieces working.  For 2nd and subsequent files the process should go faster and more smoothly.
