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




# Create Oracle Database

Automating Oracle database creation can save tons of time and reduce human error, especially in enterprise environments. Here are some solid approaches depending on your tooling preferences and infrastructure:   

## 1. Use Oracle's DBCA in Silent Mode
The Database Configuration Assistant (DBCA) supports silent mode with a response file:

``` bash
dbca -silent -createDatabase -responseFile /path/to/dbca.rsp
```

You can generate a sample response file using:

``` bash
dbca -createDatabase -responseFile NO_VALUE -silent -generateResponseFile /tmp/dbca.rsp
```

This is ideal for scripting in shell or batch files.

## 2. Automate with Ansible

Ansible is widely used for infrastructure automation. You can use community roles like oradb-create to automate:

* Oracle software installation

* Listener setup

* Database creation

Check out this [Ansible-based Oracle automation guide](https://oracledbwr.com/oracle-automation-oracle-database-creation-using-ansible-tool/) for a full walkthrough.

## 3. CI/CD with Jenkins

For DevOps-style automation, Jenkins can orchestrate:

* Oracle software install

* Database creation via shell/SQL scripts

* Post-creation validation

This [Jenkins + Oracle DB automation article](https://questoraclecommunity.org/learn/blogs/devops-automation-of-oracle-database-19c-with-jenkins-ci-cd/) shows how to build pipelines for repeatable deployments.


## 4. Infrastructure as Code with Terraform
If you're using **Oracle Cloud Infrastructure (OCI)**, Terraform is a powerful option. You can define your Autonomous Database or DB System in **.tf** files and deploy with:

``` bash
terraform init
terraform apply
```

Here’s a [Terraform example for Oracle Autonomous DB](https://blogs.oracle.com/datawarehousing/post/how-to-use-terraform-to-automate-oracle-autonomous-database-deployments) that includes Data Guard and password generation.

## 5. SQLcl Projects for Schema Deployment
For schema-level automation, Oracle’s SQLcl tool now supports Projects, which let you:

* Export schema objects to version-controlled SQL

* Stage and deploy changes

* Package releases as artifacts

It’s great for CI/CD pipelines and integrates well with Git. More on that [here](https://www.thatjeffsmith.com/archive/2025/05/sqlcl-projects-automated-oracle-database-app-deployments/).

# {ORACLE_BASE}

**{ORACLE_BASE}** is an environment variable used in Oracle Database installations. It defines the root directory for all Oracle software installations and administrative files for a given Oracle software owner (such as the oracle user).

## In Detail:

* Purpose:
** ORACLE_BASE** serves as the top-level directory for Oracle installations, separating Oracle software files from database files and diagnostic logs.
  
* Typical Structure:
Inside ORACLE_BASE, you’ll find subdirectories for product software (ORACLE_HOME), configuration files, logs, backups, etc.

* Default Value (Example):

``` bash
/u01/app/oracle
```

Here’s a typical structure:
```
/u01/app/oracle/         <- ORACLE_BASE
    └── product/19.0.0/  <- ORACLE_HOME (software for version 19c)
    └── diag/            <- Diagnostic files
    └── admin/           <- Database administration files
```

How It’s Used:

* When installing or configuring Oracle, you set ORACLE_BASE before running the installer.
* Oracle recommends keeping ORACLE_BASE consistent across installations for easier management.
  
How to Set:

``` bash
export ORACLE_BASE=/u01/app/oracle
```
**Summary:**
**{ORACLE_BASE}** is the root directory for Oracle installations and is a foundational part of Oracle’s directory structure and file organization.


# References
* [How to Create Oracle Database using DBCA? - Rajasekhar Amudala  - YouTube ](https://www.youtube.com/watch?v=fLVHiTSLXA8)
* [Oracle 12c Complete installation Demo - Dooly Tech (Suresh Dooly) - YouTube](https://www.youtube.com/watch?v=FeGZMYfGtyY)
* [Creating an Oracle database with the Database Configuration Assistant - part 2 - Chris Ostrowski - YouTube](https://www.youtube.com/watch?v=2hvsNDVoamQ)
*  [Create Oracle Database 21c Complete steps | ocptechnology - OCP TECHNOLOGY - YouTube](https://www.youtube.com/watch?v=HsViKAzsXdg)



