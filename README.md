# Smart Waste Sorting Application (Java / JavaFX)

##  Project Overview
This project consists of a Java application designed to manage **smart waste sorting** using connected bins.
The goal is to encourage households to properly sort their waste through a **loyalty points system**, while providing **monitoring and management tools** for waste treatment centers.

The application is based on a complete software architecture including:
- Object-oriented modeling (UML)
- JavaFX graphical interfaces (IHM)
- DAO architecture
- MySQL relational database

---

##  Main Features

###  Household Interface
- User registration and authentication
- Display of loyalty points
- Conversion of points into discount vouchers
- Waste deposit process:
  - Bin identification
  - Waste type selection (enum `TypeDechet`)
  - Quantity input via pop-up
- Access to waste deposit history (type, quantity, total weight)

###  Waste Treatment Center Interface
- Secure registration and authentication (code-based access)
- Management of smart bins:
  - Add bins (color via enum `Couleur`)
  - Remove or empty bins
- Visualization of full bins
- Statistics dashboard:
  - Correct sorting rate
  - Average deposit weight
  - Average points per deposit
- Contract management:
  - Contract generation
  - Contract listing
  - Contract renewal with history tracking

---

##  Project Architecture
The application follows a **modular package organization**:
- com.cytech.connexionDAO → Database connection & DAO layer
- com.cytech.model → Business and domain classes
- com.cytech.fxml → JavaFX FXML views and controllers
- com.cytech.main → Application launcher and navigation
- com.cytech.testUnitaires → Unit tests

The JavaFX interface is fully managed using **FXML files and controllers**, ensuring clear separation between logic and UI.

---

##  Database Design
- Relational database designed using **MySQL Workbench**
- Schema aligned with UML model
- Removal of redundant relationships
- Secure authentication for waste centers using a dedicated `code` field
- Strong consistency between UML, database schema and Java code

---

##  UML Modeling
The system was modeled using **StarUML**.
The final UML diagram includes:
- Clear inheritance hierarchy for bins
- Proper use of associations
- Unique identifiers for traceability
- Enumerations for waste types and bin colors

The UML model is available in the `uml/` directory.

---

##  Technologies Used
- **Java**
- **JavaFX (FXML)**
- **MySQL / MySQL Workbench**
- **DAO design pattern**
- **UML (StarUML)**
- **Eclipse IDE**

---

##  Team & Academic Context
This project was carried out as a **team project** during the **first year of engineering school (CY Tech – ING1 GMF4)**.

**Team members:**
- Adélaïde Broucas
- Julien Ruiz
- Yvann Landuré
- Flavie Cissé
- Marwan Ferreira Da Silva

---

##  My Contribution
- UML modeling and design refinements
- JavaFX interface implementation (FXML & controllers)
- Database modeling and DAO integration
- Functional testing and debugging
- Participation in architectural decisions

---

##  Academic Context
This repository contains the **complete source code** of an academic project developed as part of a Java programming course.
It is intended as a **technical showcase** of software architecture, object-oriented design and GUI development.
