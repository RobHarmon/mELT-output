This repo contains sample code generated automatically to create a snapshot replica of a Postgres database in Firebolt.  All the code is automatically generated.  Give the generator a login to a database, run it, and this is the result.  Each create object statement and ingest statement are actually created in seperate files for ease of modification.  They've been consolidated here for simplicity.

It assumes a daily export of of all tables selected in the system to S3 in their entirity.  From there, it synchronizes the Firebolt database table by table and row by row to the most recent export.  The user can select single or multiple schemas, single or multimple tables in those schemas, or all user created tables in the database.

Table prefixes (in this case, databasename_schemaname_) are optional.

There are limitations to the system currently, for instance all tables in the source database must have primary keys.  If they don't, the DDL and ingest code will have to be modified by hand.  But hey, modifying a few ETLs is a lot better than creating them all by hand!
