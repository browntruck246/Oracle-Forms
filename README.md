# Oracle-Forms

**Oracle Forms** is a rapid application development tool for building enterprise applications that interact with Oracle databases. It enables developers to create, deploy, and manage data-driven applications with rich user interfaces using PL/SQL and a drag-and-drop form builder environment.

## Key Features

- Visual design of forms and reports
- Tight integration with Oracle Database
- Support for business logic using PL/SQL
- Web deployment via Oracle WebLogic Server
- High productivity for data entry and transaction applications

## Typical Use Cases

- Enterprise data entry systems
- Transaction processing applications
- Custom business workflows
- Modernizing legacy Oracle applications

**Oracle Forms** is widely used in large organizations for developing robust, scalable, and secure applications that require efficient data management and user interaction.

# Referneces
* [Oracle Forms Tutorial || Oracle Forms Training for beginners || Learning Tube - YouTube](https://www.youtube.com/watch?v=xPktL8oSR_s)
* [Oracle Forms Tutorial - Chanikya Konda - YouTube](https://www.youtube.com/playlist?list=PLGfV_goH6Dpz1TWMOypRILJ1LbaBAbtxk)
* [Oracle PL/SQL - Forms tutorials - Francois Dearelle](https://sheikyerbouti.developpez.com/index_en/)
* [Oracle Forms12c - Install Oracle Forms and Reports 12c - YouTube](https://www.youtube.com/watch?v=-DLE040nU2c&list=PLQfBfu7k8exAjg0-lIZUYkeE1DgpsePTA&index=7)

# Step-by-Step Guide to Install Oracle Forms and Start Oracle Form Builder

## 1. Prerequisites

- **Operating System:** Windows (most common for Forms; Linux also supported)
- **Java JDK:** Install the required Java Development Kit (JDK) version (check Oracle Forms certification matrix; usually JDK 8 for Forms 12c)
- **Oracle Database:** Optional, but recommended (for running forms against a database)
- **Administrator Privileges:** You need admin rights on your machine

---

## 2. Download Oracle Forms and Reports

1. Go to [Oracle Software Delivery Cloud](https://edelivery.oracle.com/) or [Oracle Technology Network](https://www.oracle.com/middleware/technologies/forms-downloads.html).
2. Search for **Oracle Forms and Reports** (choose the version, e.g., 12c).
3. Download the following:
   - **Oracle WebLogic Server** (required for Forms 12c and up)
   - **Oracle Forms & Reports installer**

---

## 3. Install Oracle WebLogic Server

1. **Extract** the WebLogic zip installer.
2. Run the installer:
   - On Windows:  
     ```
     java -jar fmw_12.2.1.x.x_wls.jar
     ```
3. Follow the wizard, choose a Middleware home (e.g., `C:\Oracle\Middleware\Oracle_Home`).
4. Complete the WebLogic installation.

---

## 4. Install Oracle Forms and Reports

1. **Extract** the Forms & Reports installer.
2. Run the installer:
   - On Windows:  
     ```
     java -jar fmw_12.2.1.x.x_fr_installer.jar
     ```
3. Select the same **middleware home** as WebLogic.
4. Choose the **installation type** (Forms Builder only, or Forms and Reports).
5. Follow the prompts and finish the installation.

---

## 5. Configure Oracle Forms Domain

1. Launch the **Configuration Wizard**:
   - Find it under  
     `Start Menu > Oracle > [Oracle Home] > Tools > Configuration Wizard`
2. Choose **Create a New Domain**.
3. Select **Oracle Forms** (and Reports, if needed).
4. Set up user/password, ports, and other details.
5. Complete the configuration.

---

## 6. Start Oracle Form Builder

1. Go to:  
   `Start Menu > Oracle > [Oracle Home] > Forms Builder`
2. Or, navigate to the Forms Builder executable:  
   Example: `C:\Oracle\Middleware\Oracle_Home\forms\bin\frmbld.exe`
3. Double-click **frmbld.exe** to start Oracle Form Builder.

---

## 7. Optional: Start WebLogic and Forms Services (for running forms in browser)

1. Start **Node Manager** (if used).
2. Start **WebLogic Admin Server**.
3. Start the **Forms Managed Server**.

---

## 8. First Use

- In Form Builder, connect to your database (if needed).
- Create or open `.fmb` files (Forms modules).

---

## References

- [Oracle Forms 12c Installation Guide (Official)](https://docs.oracle.com/en/middleware/developer-tools/forms/12.2.1.4/instl/index.html)
- [Oracle Forms Downloads](https://www.oracle.com/middleware/technologies/forms-downloads.html)

---

## Tips

- Always check version compatibility between JDK, WebLogic, and Forms.
- For a dev/test environment, **"Forms Builder Only"** installation is sufficient.
- For production or web deployment, full **Forms + WebLogic** setup is required.

# Oracle Forms: Starting, WebLogic Server Role, and Configuration

## How to Start Oracle Forms

To start Oracle Forms (after installation and configuration):

1. **For Development (using Form Builder):**
   - Go to  
     `Start Menu > Oracle > [Oracle Home] > Forms Builder`
   - Or run  
     `C:\Oracle\Middleware\Oracle_Home\forms\bin\frmbld.exe`

2. **For Running Forms in a Browser (Web Deployment):**
   - Start the Node Manager (if used).
   - Start the WebLogic Admin Server (usually from `Start Menu > Oracle > [Oracle Home] > Start Admin Server`).
   - Start the Forms Managed Server.
   - Access Forms via your browser (URL is usually like `http://localhost:9001/forms/frmservlet`).

---

## Why Do You Need WebLogic Server?

- **WebLogic Server** is Oracle’s Java EE application server.
- **Oracle Forms (12c and up)** runs as a web application inside WebLogic Server.
- WebLogic manages:
  - Application deployment
  - Security
  - Session management
  - HTTP/HTTPS requests
  - Integration with other Oracle Middleware

**Without WebLogic**, Oracle Forms cannot be served to browsers or users; it’s an essential middleware layer for web-based forms.

---

## How to Configure Oracle Forms

**After installing Oracle Forms and WebLogic:**

1. **Run the Configuration Wizard:**
   - Find it under  
     `Start Menu > Oracle > [Oracle Home] > Tools > Configuration Wizard`
2. **Choose “Create a New Domain”:**
   - Select **Oracle Forms** (and Reports if required).
3. **Domain Setup:**
   - Set domain name and location.
   - Create admin user/password.
   - Set server ports (default: 7001 for Admin Server, 9001 for Forms Managed Server).
4. **Complete the Configuration:**
   - The wizard creates and configures the necessary WebLogic domain and deploys Forms.
5. **Start Services:**
   - Start Admin Server and Forms Managed Server.
   - Optionally, configure Node Manager for advanced management.

**You can customize Forms configuration using `formsweb.cfg` and `default.env` in:**
```
[Middleware_Home]/user_projects/domains/[domain_name]/config/fmwconfig/servers/WLS_FORMS/applications/formsapp_12.2.1/config
```

---



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

**Documentation:** [5  Parameters for the sqlnet.ora File](https://docs.oracle.com/en/database/oracle/oracle-database/19/netrf/parameters-for-the-sqlnet.ora.html#GUID-2041545B-58D4-48DC-986F-DCC9D0DEC642) or 
---

# Oracle Database Instance
Gere’s a high-level overview of configuring a basic Oracle Database instance on Linux:

## 1. Prerequisites
* Ensure your system meets Oracle’s minimum requirements.
* Install required OS packages (for RHEL/CentOS, for example).
* Set kernel parameters and resource limits as per Oracle guidelines.

## 2. Install Oracle Database Software
* Download Oracle Database from Oracle’s official site.
* Extract and install the software

``` bash
unzip linux.x64_193000_db_home.zip -d /u01/app/oracle/product/19.0.0/dbhome_1
cd /u01/app/oracle/product/19.0.0/dbhome_1
./runInstaller
```
* Follow the GUI or silent installation prompts.

## 3. Run Configuration Scripts
* As root, run scripts prompted at the end of installation:
``` bash
/u01/app/oraInventory/orainstRoot.sh
/u01/app/oracle/product/19.0.0/dbhome_1/root.sh
```

## 4. Create a Database
* Use Database Configuration Assistant (DBCA)
  ``` bash
  dbca
  ```
Or in silent mode:

``` bash
dbca -silent -createDatabase -templateName General_Purpose.dbc \
  -gdbname orcl -sid orcl -responseFile NO_VALUE \
  -characterSet AL32UTF8 -memoryPercentage 30 \
  -emConfiguration DBEXPRESS -emExpressPort 5500 \
  -dbsnmpPassword password -sysPassword password -systemPassword password
```
## 5. Configure Listener 
* Use Oracle Net Configuration Assistant (netca):

  ``` bash
  netca
  ```
Or edit listener.ora and start the listener:

``` bash
lsnrctl start
```

## 6. Set Environment Variables
Add to **.bash_profile** of the oracle user:

  ``` bash
export ORACLE_HOME=/u01/app/oracle/product/19.0.0/dbhome_1
export ORACLE_SID=orcl
export PATH=$ORACLE_HOME/bin:$PATH
```

## 7. Test the Database

``` bash
sqlplus / as sysdba
```
You should be connected to the database.

## 

# References

- [Oracle Forms 12c Installation & Configuration Guide](https://docs.oracle.com/en/middleware/developer-tools/forms/12.2.1.4/instl/index.html)
- [Oracle WebLogic Server Documentation](https://docs.oracle.com/en/middleware/fusion-middleware/weblogic-server/12.2.1.4/index.html)
