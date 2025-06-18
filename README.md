# Oracle-Forms

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

# Referneces
* [Oracle Forms Tutorial || Oracle Forms Training for beginners || Learning Tube - YouTube](https://www.youtube.com/watch?v=xPktL8oSR_s)
* [Oracle Forms Tutorial - Chanikya Konda - YouTube](https://www.youtube.com/playlist?list=PLGfV_goH6Dpz1TWMOypRILJ1LbaBAbtxk)
* [Oracle PL/SQL - Forms tutorials - Francois Dearelle](https://sheikyerbouti.developpez.com/index_en/)
* [Oracle Forms12c - Install Oracle Forms and Reports 12c - YouTube](https://www.youtube.com/watch?v=-DLE040nU2c&list=PLQfBfu7k8exAjg0-lIZUYkeE1DgpsePTA&index=7)
  
