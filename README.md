# Parchear en Antioquia

> [!NOTE]  
> **Parchear en Antioquia** is a web and mobile platform to discover, share, and organize “parches” (plans, events, and outings) in the department of Antioquia, Colombia.

---

## 📌 Key Links

- 🔗 **HTML Documentation**:  
  https://parchearenantioquia.up.railway.app/docs/  
- 🌐 **Official Website**:  
  https://parchearenantioquia.up.railway.app/  
- 🎛️ **Swagger (Authentication API)**:  
  https://hotel-application-production.up.railway.app/swagger-ui/index.html#/auth-controller/token  
- 📚 **Structure and Routing (DeepWiki)**:  
  https://deepwiki.com/AndresT3086/Hotel-_Application/3.1-application-structure-and-routing  

---

## 📂 Folder Structure

The main project contains two subdirectories, each with its own README:

- `frontend/`  
  > [!TIP] This folder contains the user interface (React/Vite).  
  ▶️ **Check** `SISTEMA DE RESERVA DE ALOJAMIENTOS - DOCUMENTACION TECNICA.md` for design documentation and architecture.

- `backend/`  
  > [!TIP] This folder holds the RESTful API (Java + Spring Boot).  
  ▶️ **Check** `backend/README.md` for routes, entities, and quick start guide.

---

## 🚀 Getting Started

1. **Clone the repository**  
   ```bash
   git clone https://github.com/your-org/parchear-antioquia.git
   cd parchear-antioquia
   ```

2. **Read each folder's README**

   ```bash
   cd frontend && less "SISTEMA DE RESERVA DE ALOJAMIENTOS - DOCUMENTACION TECNICA.md"
   cd ../backend  && less README.md
   ```

3. **Follow the setup and launch instructions** for each subproject to run the application locally.

> ⚠️ **[!WARNING]**
>
> Make sure to properly configure:
> - Environment variables and API endpoints in `.env.local` for the frontend.
> - `application.properties` for the backend.
>
> Also note:
> - The system supports accommodation search, reservation, and management.
> - It uses JWT authentication and design patterns like DTO, Repository, and Singleton.
> - The database is MySQL in production and H2 for testing.

---

## 🤝 Contributing

1. Fork the project
2. Create a feature branch (`git checkout -b feature/your-feature-name`)
3. Make your commits (`git commit -m "Add new functionality"`)
4. Push to your branch (`git push origin feature/your-feature-name`)
5. Open a Pull Request

> 🔧 **[!IMPORTANT]**  
> Please follow the style guidelines, layered architecture (Controller, Service, Repository), and defined patterns. Run automated tests before submitting your PR.

---

## 📄 License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

Thank you for your interest in Parchear in Antioquia! 🚀
