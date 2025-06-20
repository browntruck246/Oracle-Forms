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
