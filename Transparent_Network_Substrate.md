# Oracle Transparent Network Substrate (TNS)

In Oracle, TNS (Transparent Network Substrate) is a networking protocol that enables communication between Oracle clients, databases, and other services. It acts as an abstraction layer, simplifying connection management and allowing applications to interact with databases without needing to know the underlying network details. 

## Windows 
```
C:\Oracle\product\<version>\client_1\network\admin\tnsnames.ora
```

or
```
%ORACLE_HOME%\network\admin\tnsnames.ora
```

## On Linux/Unix:

```
/u01/app/oracle/product/<version>/db_1/network/admin/tnsnames.ora
```

or 

```
$ORACLE_HOME/network/admin/tnsnames.ora
```
## Notes:

* **<version>** and **client_1** or **db_1** will depend on your Oracle installation version and environment.
* The actual path may vary based on your Oracle installation and how the environment variables (**ORACLE_HOME**) are set.
* **tnsnames.ora** is the file that stores network service names used by Oracle clients to connect to databases.


## Example tnsnames.ora file

Here is a basic example of a **tnsnames.ora** file, which is used by Oracle clients to define connect descriptors for databases:

```
ORCL =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = dbserver.example.com)(PORT = 1521))
    (CONNECT_DATA =
      (SERVER = DEDICATED)
      (SERVICE_NAME = orcl.example.com)
    )
  )

SALESDB =
  (DESCRIPTION =
    (ADDRESS = (PROTOCOL = TCP)(HOST = salesdb.example.com)(PORT = 1521))
    (CONNECT_DATA =
      (SID = SALES)
    )
  )

DEVDB =
  (DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = devdb1.example.com)(PORT = 1521))
      (ADDRESS = (PROTOCOL = TCP)(HOST = devdb2.example.com)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = devdb.example.com)
    )
  )
  ```

## Explanation:

* Each entry (e.g., **ORCL**, **SALESDB**, **DEVDB**) defines a network service name.
* **HOST** specifies the database server address.
* **PORT** is usually 1521 for Oracle.
* **SERVICE_NAME** or **SID** specifies which database instance to connect to.
* You may have multiple entries for different databases or different environments (production, development, etc.).
