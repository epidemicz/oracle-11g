Image for running Oracle Database 11g Standard/Enterprise. Due to oracle license restrictions image does not contain database itself and will install it on first run from external directory.

``This image for development use only``

# Usage
Download database installation files from [Oracle site](https://www.oracle.com/database/technologies/112010-linx8664soft.html) and unpack them to **install**.
Put "dump.dmp" in the **dump** directory to automatically import after installation.

Run container and it will install oracle and create database:

```sh
docker-compose up
```

Database located in **/opt/oracle** folder

OS users:
* root/install
* oracle/install

DB users:
* SYS/oracle

To execute impdp/expdp just use docker exec command:
```sh
docker exec -it oracle11g impdp ..
```
