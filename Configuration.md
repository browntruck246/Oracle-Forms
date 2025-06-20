# Configuration of Oracle Forms

**You can customize Forms configuration using `formsweb.cfg` and `default.env` in:**
```
[Middleware_Home]/user_projects/domains/[domain_name]/config/fmwconfig/servers/WLS_FORMS/applications/formsapp_12.2.1/config
```

Configuring Oracle Forms involves several steps to ensure that the Forms environment is set up correctly for development and deployment. Below is a general outline of the Oracle Forms configuration process:

--- 

# Oracle Forms and Reports Setup Guide

## 1. Installation

- Install **Oracle Forms and Reports**, typically as part of **Oracle Fusion Middleware** (e.g., Oracle Forms 12c).
- Follow the Oracle Forms installer prompts to configure the **Oracle Home** and **Middleware Home** directories.

## 2. Domain Configuration

- Use the **Configuration Wizard** to create a new **WebLogic domain** for deploying Forms applications.
- Configure the **Admin Server** and **Managed Server(s)**, assigning appropriate ports:
  - Default port **7001** for Admin Server
  - Default port **9001** for `WLS_FORMS` Managed Server

## 3. Forms Environment Variables

Set the required environment variables:

- `ORACLE_HOME` – Points to the Oracle installation directory.
- `DOMAIN_HOME` – Path to your WebLogic domain.
- `FORMS_PATH` – Directories where Forms modules (`.fmb`, `.fmx`, etc.) are stored.
- `PATH` – Should include Oracle binaries.

> **Note:**  
> On Unix/Linux, these variables are often set in `.bash_profile` or via provided Oracle scripts.

## 4. Configuration Files
* Main configuration files are located in
  ```
  $DOMAIN_HOME/config/fmwconfig/servers/WLS_FORMS/applications/formsapp_12.2.1/config
  ```
    - formsweb.cfg – Controls runtime parameters for Forms applications (e.g., module, userid, lookAndFeel, etc.).
    - default.env – Environment variables used by Forms runtime.
    - forms.conf – Apache/Oracle HTTP Server configuration for Forms servlet.


## 5. Database Connectivity

- Ensure the **Oracle Database** is accessible.
- Update `tnsnames.ora` with valid aliases for the database.
- Confirm that the `userid` parameter in `formsweb.cfg` matches a valid DB user/schema.

## 6. Deploying Forms Modules

- Place compiled Forms modules (`.fmx`, `.mmx`, `.plx`) in a directory listed in `FORMS_PATH`.
- Source Form modules (`.fmb`, `.mmb`, etc.) are **not needed** on the application server.

## 7. Starting Oracle Forms Services

- Start the **WebLogic Admin Server** and **Managed Server(s)** (`WLS_FORMS`).
- Start **Oracle HTTP Server** (if using) to serve Forms URLs.

  
## 8. Accessing Forms Applications

* Use a URL like:

```
http://<host>:<port>/forms/frmservlet?config=<configuration>
```
where <configuration> is a section in formsweb.cfg.

## 9. Tuning & Security
* Tune JVM and WebLogic parameters for performance.
* Configure SSL if required.
* Set up security in WebLogic Console for user access.

# References
* [Oracle Forms Installation and Configuration Guide (12c)](https://docs.oracle.com/middleware/1221/formsandreports/install-fnr/FRINS.pdf)
* [Oracle Forms Deployment Guide](https://docs.oracle.com/middleware/1221/formsandreports/deploy-forms/toc.htm)
* [Oracle Forms Configuration Files Reference](https://docs.oracle.com/en/middleware/developer-tools/forms/12.2.1.4/working-forms/configuration-files.html)






  
