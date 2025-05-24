# Backend Hotel - RESTful API

## Table of Contents

- [Overview](#overview)
- [Architecture and Project Structure](#architecture-and-project-structure)
- [Main Entities and Relationships](#main-entities-and-relationships)
- [Endpoints and Features](#endpoints-and-features)
- [Security and Authentication](#security-and-authentication)
- [Technologies Used](#technologies-used)
- [Quick Start Guide](#quick-start-guide)
- [Conventions and Best Practices](#conventions-and-best-practices)
- [Contributing](#contributing)

---

## Overview

**Backend Hotel** is a RESTful API developed in Java with Spring Boot, designed to manage the business logic of a hotel or accommodation booking platform. It allows the management of users, products (rooms or properties), reservations, categories, cities, features, images, and roles, integrating robust authentication and authorization based on JWT.

---

## Architecture and Project Structure

The project follows a multi-layered architecture, clearly separating presentation logic (controllers), business logic (services), data access (repositories), and configuration (security, CORS, etc).

```
src/main/java/grupo6/backendHotel/
│
├── config/         # General configurations
├── controllers/    # REST controllers (endpoints)
├── dto/            # Data Transfer Objects (DTOs)
├── exceptions/     # Custom exception handling
├── models/         # Domain entities
├── repository/     # JPA repositories
├── security/       # Security and JWT
└── service/        # Business logic
```

---

## Main Entities and Relationships

- **User:** Represents system users. Each user has a role (Admin/User) and can have multiple reservations.
- **Product:** Rooms or properties available for booking. Associated with a city, category, images, and features.
- **Reservation:** Links a user to a product for a date range.
- **Category:** Classification of products (e.g., Hotel, Apartment, etc).
- **City:** Geographical location of products.
- **Feature:** Services or attributes of products (WiFi, Pool, etc).
- **Image:** Images associated with products.
- **Role:** Defines user permissions (Admin, User).

---

## Endpoints and Features

### Users (`/users`)
- **GET /users**: List all users.
- **GET /users/{id}**: Get user by ID.
- **POST /users**: Register a new user (with password encryption).
- **PUT /users/{id}**: Update user.
- **DELETE /users/{id}**: Delete user.
- **GET /users/{id}/reservations**: Get reservations for a user.

### Products (`/products`)
- **GET /products**: List all products.
- **GET /products/{id}**: Get product by ID.
- **POST /products**: Create product (Admin).
- **PUT /products/{id}**: Update product (Admin).
- **DELETE /products/{id}**: Delete product (Admin).
- **GET /products/city/{name}**: Search products by city.
- **GET /products/category/{id}**: Search products by category.
- **GET /findByDate/{startDate}/{endDate}**: Search available products by dates.
- **GET /findByDate/{startDate}/{endDate}/{city}**: Search available products by dates and city.

### Reservations (`/reservations`)
- **GET /reservations**: List all reservations.
- **GET /reservations/{id}**: Get reservation by ID.
- **POST /reservations**: Create reservation (User).
- **PUT /reservations/{id}**: Update reservation (Admin).
- **DELETE /reservations/{id}**: Delete reservation (Admin).
- **GET /reservations/product/{id}**: Reservations by product.

### Categories, Cities, Features, Images, Roles
- Full CRUD for each entity, with access restrictions according to role.

---

## Security and Authentication

- **JWT (JSON Web Token):** Token-based authentication and authorization.
- **Roles:** 
  - **Admin:** Full access to resource management.
  - **User:** Can view information and create reservations.
- **CORS:** Configured to allow access from any origin.
- **Endpoint Protection:** Defined in `SecurityConfig.java` using antMatchers and Spring Security annotations.

---

## Technologies Used

- **Java 11+**
- **Spring Boot**
- **Spring Security (JWT)**
- **Spring Data JPA**
- **Lombok**
- **Maven**

---

## Quick Start Guide

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd Backend
   ```

2. **Configure the database**
   - Edit `src/main/resources/application.properties` with your database credentials and URL.

3. **Build and run**
   ```bash
   mvn clean install
   mvn spring-boot:run
   ```

4. **Test the API**
   - Use Postman, Insomnia, or any HTTP client to consume the endpoints.
   - The authentication endpoint is usually `/auth/login`.

---

## Conventions and Best Practices

- Use of DTOs to decouple the presentation layer from persistence.
- Centralized exception handling.
- Data validation in controllers and services.
- Clear separation of responsibilities by layers.
- Use of Lombok annotations to reduce boilerplate code.

---

## Contributing

Contributions are welcome. Please open an issue or pull request following the project conventions. 