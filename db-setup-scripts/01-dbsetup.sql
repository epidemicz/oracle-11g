create user localdev identified by localdev;

grant create session to localdev;
grant create table to localdev;
grant create materialized view to localdev;
grant create view to localdev;
grant create synonym to localdev;
grant unlimited tablespace to localdev;
grant "CONNECT" to localdev;
grant "RESOURCE" to localdev;
grant all privileges to localdev;
grant imp_full_database to localdev;