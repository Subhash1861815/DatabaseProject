# COMP 3380 Final Project

## What are the files?
auth.cfg -> stores the username and password to access the database
interface.py -> Interface and all queries
makefile -> Automatically install pymssql dependency and run the interface

backup.sql -> A secondary storage for database creation code
insert.sql -> All the inserts to repopulate the database
media.sql -> The database creation code
serverqueries -> Command to delete the entire database

data.csv -> Raw data from dataset (source)[https://www.kaggle.com/datasets/alanvourch/tmdb-movies-daily-updates] only cut down to first 10k lines to not be too big
csv_to_sql.py -> Generate inserts to populate database and reload database creation code from backup

## How to create the database?

Assuming the database tables have been deleted.
Run the interface, type 'help' to see all the commands. Type 'recreate' and it should take a very short amount of time to run the commands necessary.

## How to delete the records from the database?

Run the interface, type 'help' to see all the commands. Type 'delete' and it should take a very short amount of time to run the commands.

## How to populate the database?

Assuming all records have been deleted from the database.
Run the interface, type 'help' to see all the commands. Type 'repopulate' and you will see a print that explains that it should take around 9 minutes to run all the inserts to repopulate the database.

## How to run the interface?

If you are in directory and can see interface.py in ls  
```bash
make
```
