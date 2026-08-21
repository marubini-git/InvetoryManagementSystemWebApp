# InvetoryManagementSystemWebApp
A full-stack, enterprise Java EE web application built for efficient product inventory tracking, stock adjustments, role-based access control, and financial reporting.

## 🚀 Architecture & Features

- Enterprise JavaBeans (EJB 3.x): Utilizes Stateless Session Beans (`ProductFacade`) for modular and scalable business logic execution.
- Java Persistence API (JPA): Handles object-relational mapping (ORM) for the `Product` entity with underlying database persistence.
- Container-Managed Security (Form Auth):** Secured with GlassFish role-based authentication, guarding administrative endpoints (`web.xml`).
- Custom Exception Handling: Robust error handling using custom domain exceptions (`InvalidProductDataException`, `InsufficientStockException`, `ProductNotFoundException`).
- Dynamic Presentation Layer: Servlets and JSP pages providing interactive forms and dynamic views for stock levels, valuations, and low-stock reports.

---

## 🛠️ Tech Stack

- Backend: Java EE (EJB, Servlets, JPA)
- Frontend: JSP, HTML5, Modern CSS3 (`main.css`)
- Application Server: GlassFish Server (v3 or higher)
- Build System: Apache Ant
- IDE: NetBeans IDE

---

Repository Structure

```text
InvetoryManagementSystemWebApp/
├── src/
│   ├── conf/               # JPA Persistence configuration (persistence.xml)
│   └── java/
│       └── za/co/tshepo/
│           ├── ejb/bl/     # EJB Session Beans & Interfaces
│           ├── entity/     # JPA Product Entity & Metamodel
│           ├── exception/  # Custom Domain Exceptions
│           └── web/        # HttpServlets for Web Controllers
└── web/                    # JSP pages, HTML, CSS, and WEB-INF descriptors
```

---

Prerequisites & Setup

1. **Java Development Kit (JDK 8+):** Installed and configured in system PATH.
2. **GlassFish Application Server:** Installed and configured with your target database connection (JDBC Realm/Data Source).
3. **Apache Ant:** Installed (or use NetBeans built-in Ant runner).

Building and Deployment

1. Clone the repository:
   ```bash
   git clone https://github.com/marubini-git/InvetoryManagementSystemWebApp.git
   cd InvetoryManagementSystemWebApp
   ```
2. Build the WAR file using Ant:
   ```bash
   ant clean compile dist
   ```
   *The generated WAR file will be placed in the `dist/` directory (`InvetoryManagementSystemWebApp.war`).*

3. Deploy to GlassFish:
   - Copy the generated `.war` file to your GlassFish `autodeploy` directory, or
   - Deploy directly via the GlassFish Administration Console (`http://localhost:4848`).

4.Security Roles:
   -Admin
   -username: alice_admin
   -password: admin123

   -Clerk
   -username: bob_clerk
   -password: clerk123

5. Access the Application:
   Open your browser and navigate to `http://localhost:8080/InvetoryManagementSystemWebApp/
