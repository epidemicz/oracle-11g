Modified from [jaspeen/oracle-11g](https://github.com/jaspeen/oracle-11g)

Image for running Oracle Database 11g Standard. Due to oracle license restrictions, this image does not contain the database itself and will install it on first run from an external directory.

``This image for development use only``

# Usage

## Prerequisites
Download database installation files from [Oracle Site](https://www.oracle.com/database/technologies/112010-linx8664soft.html) and unpack them to **install** folder.

- linux.x64_11gR2_database_1of2.zip
- linux.x64_11gR2_database_2of2.zip

## Add .dmp file (optional)
Add a .dmp file you wish to import after database creation to the **dump** folder.  Warning: **the file must be named dump.dmp**.

## Run the container
Running the container will install oracle, create the database, and attempt to install any .dmp file in the **dump** folder.

```sh
docker-compose up
```

## Other information
Database located in **/opt/oracle** folder

Oracle Service Name:
* ORCL

OS Users and Passwords:
* root/install
* oracle/install

Database Users and Passwords:
* sys/oracle
* localdev/localdev (created on initialization for data pump import)
