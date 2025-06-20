# sqlnet.ora
Copilot said: The `sqlnet.ora` file is a configuration file
The sqlnet.ora file is a configuration file used by Oracle Database to specify network parameters for Oracle Net Services connections. It is typically located in the $ORACLE_HOME/network/admin directory on both client and server machines.

## Purpose
* **sqlnet.ora** defines how Oracle Net (the networking component of Oracle Database) behaves when connecting, authenticating, and securing database sessions.
* It influences client/server communication, encryption, authentication methods, and more.

## Common Parameters
Here are some frequently used parameters in sqlnet.ora:

* NAMES.DIRECTORY_PATH
Specifies the order of naming methods (like TNSNAMES, LDAP, EZCONNECT) Oracle Net uses to resolve connect identifiers.

```
NAMES.DIRECTORY_PATH = (TNSNAMES, EZCONNECT)
```

* SQLNET.AUTHENTICATION_SERVICES
Controls accepted authentication methods (e.g., OS authentication, Kerberos, etc.).

```
SQLNET.AUTHENTICATION_SERVICES = (NONE)
```

* SQLNET.ENCRYPTION_SERVER / SQLNET.ENCRYPTION_CLIENT
Specifies encryption settings for data sent between clients and servers.

```
SQLNET.ENCRYPTION_SERVER = REQUIRED
SQLNET.ENCRYPTION_CLIENT = REQUIRED
```

* SQLNET.ALLOWED_LOGON_VERSION
Sets the minimum authentication protocol version allowed.

* SQLNET.EXPIRE_TIME
Specifies a time (in minutes) for detecting dead connections.

```
SQLNET.EXPIRE_TIME = 10
```
* TRACE_LEVEL_CLIENT / TRACE_LEVEL_SERVER
Sets the level of Oracle Net tracing on client/server for troubleshootin

## Example sqlnet.ora

```
NAMES.DIRECTORY_PATH = (TNSNAMES, EZCONNECT)
SQLNET.AUTHENTICATION_SERVICES = (NONE)
SQLNET.EXPIRE_TIME = 10
```
## Summary
* **sqlnet.ora** configures Oracle Net Services for both clients and servers.
* It allows administrators to control security, naming resolution, and connection behaviors.
* Changes to sqlnet.ora often require restarting client tools or listener services to take effect.

**Documentation:** [5  Parameters for the sqlnet.ora File](https://docs.oracle.com/en/database/oracle/oracle-database/19/netrf/parameters-for-the-sqlnet.ora.html#GUID-2041545B-58D4-48DC-986F-DCC9D0DEC642) 
