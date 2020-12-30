Cheatnets R Us
==============

Data helper scripts for working with the crowdsourced Helium hotspot cheatnet tracker: [Google Sheet](https://docs.google.com/spreadsheets/d/1tqs-9xE7tB9Vlk_cgx1dmakRocPoqm3dPsMHVvqAfOs/edit?ts=5fec2a61#gid=0)

Please note this is an extremely unofficial community effort, and is a work in progress.

To submit a cheatnet, just add it to the Google Sheet above.

Usage
-----

Setup a clone of the blockchain-etl database schema. This fetches latest schema from [jamiew/helium-etl-queries](https://github.com/jamiew/helium-etl-queries)

```
createdb etl
curl https://raw.githubusercontent.com/jamiew/helium-etl-queries/master/etl-schema.sql | psql etl
```

_TODO update the account_ids/gsheets.csv file_


Then setup our cheatnets table:

```
psql etl < cheatnets-schema.sql
```

And import account ids from our handy `account_ids` file

```
cat account_ids | ./generate-sql-inserts.sh | psql etl
```
