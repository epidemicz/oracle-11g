Modified from [jaspeen/oracle-11g](https://github.com/jaspeen/oracle-11g)

Image for running Oracle Database 11g Standard. Due to oracle license restrictions, this image does not contain the database itself and will install it on first run from an external directory.

``This image for development use only``

# Usage

## Prerequisites
Warning: Oracle moved the download location.  Below is updated with the best information I can find today, but mostly untested for now because I can't get into their system right now with my account.

You need to register an Oracle account, download the installation files from the [Oracle Software Delivery Cloud](https://edelivery.oracle.com/osdc/faces/SoftwareDelivery) and unpack them to **install** folder.

They are difficult to find, search for the Database 11g (11.2.0.4). When you "check out" you have to choose which software you want to download, just uncheck Database and Clusterware, choose the platform and download your full client.

Originally, these were the file names. I am not sure if these align with what you can find on the Oracle Software Delivery Cloud today.
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
