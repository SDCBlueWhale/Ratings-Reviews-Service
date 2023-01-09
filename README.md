# Ratings-Reviews-Service

The purpose of this project is to create a high performance backend API
designed to provide an efficient way to manage the ratings & reviews feature of an e-commerce website.

## Technologies
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![Node](https://img.shields.io/badge/-Node-9ACD32?logo=node.js&logoColor=white&style=for-the-badge)
![Express](https://img.shields.io/badge/-Express-DCDCDC?logo=express&logoColor=black&style=for-the-badge)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Nginx](https://img.shields.io/badge/-Nginx-white?logo=nginx&logoColor=green&style=for-the-badge)

## Commands for ETL (Extract, Transform & Load) process
#### Check if postgresql server is running locally
> brew services

#### Start the postgresql server if it isn't already running
> brew services restart postgresql@15

#### Stop postgresql server
> brew services stop postgresql

#### Set expanded view to auto (on, off are also options)
> \x auto

#### Turn on timing to benchmark queries in psql (terminal)
> \timing

#### Opens postgres in terminal with user 'sdc',
> psql postgres -U sdc ...local machine
> sudo -u postgres psql ...on EC2, this is the default user after install
> psql -U sdc sdc_reviews ...then provide password

#### Stops postgres in terminal
> \q

#### Switch to db of choice
> \c sdc_reviews

#### Show tables in db
> \dt

#### Describe a table with extra information
> \d+ 'table name'

#### Return number of rows in a table
> SELECT count(*) FROM 'table name';

#### Run from setup_tables.sql directory to clean data base and create tables
> psql -U sdc -d sdc_reviews -a -f setup_tables.sql

#### Run from load_tables.sql directory to load csv data into data base tables
> psql -U sdc -d sdc_reviews -a -f load_tables.sql

#### Run from create_indexes.sql directory to create the needed indexes
> psql -U sdc -d sdc_reviews -a -f create_indexes.sql

#### Check what index's are being used for a table
> SELECT indexname, indexdef FROM pg_indexes WHERE tablename = 'tablename';

#### Fix id sequences in table primary keys
> psql -U sdc -d sdc_reviews -a -f fix_sequences.sql;

<<<<<<< HEAD
#### Create pgsql file of the data base
> pg_dump -U sdc -f review.pgsql -C sdc_reviews

#### Send the pgsql file to EC2
> scp -i ~/Desktop/AWS\ Deployments/sdc_db.pem review.pgsql ubuntu@54.83.147.29:/home/ubuntu

psql -U sdc sdc_reviews < review.pgsql
=======
#### Create a pgsql file that can be transferred to deployed server
> pg_dump -U sdc -f review.pgsql -C sdc_reviews

#### Transfer file
> scp -i ~/downloads/sdc.pem qa.pgsql ubuntu@18.219.169.32:/home/ubuntu


>>>>>>> cd1e96ca05814428046fbcb2507c9f3c6f43fabb
