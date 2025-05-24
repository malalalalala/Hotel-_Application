#  Parchear en Antioquia Application Frontend

![Hotel App Banner](public/logo192.png)

## Overview

This is the **Frontend** for the Hotel Application, a modern web platform for booking and managing accommodations. 

> **Note:** This frontend requires a compatible backend API. Make sure to configure the backend URL in your `.env.local` file. 
> If you need the backend, see: [Hotel Application Backend](URL_TO_BACKEND_REPO)

---

## Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Scripts](#scripts)
- [Documentation](#documentation)
- [Technologies](#technologies)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

---

## Features
- 🔍 **Search** for hotels, houses, and more by city and date.
- 🗂️ **Categories** and recommendations for easy browsing.
- 🏨 **Product details** with image galleries, amenities, and policies.
- 📅 **Reservation system** with date pickers and user authentication.
- 👤 **User registration and login** with role-based access (admin/user).
- 🛠️ **Admin panel** for property management.
- 🌐 Responsive and modern UI.

---

## Project Structure
```
Frontend/
  src/
    api/           # API service calls
    components/    # Reusable UI and page components
    constants/     # App-wide constants
    context/       # React context providers
    helpers/       # Utility helpers
    hooks/         # Custom React hooks
    pages/         # Main app pages
    reducers/      # State reducers
    shared-components/ # Shared UI elements
    styles/        # SCSS/CSS styles
    utils/         # Utility functions
  public/          # Static assets
  docs/            # Generated documentation (JSDoc)
  jsdoc.json       # JSDoc configuration
  package.json     # Project dependencies and scripts
  vite.config.js   # Vite configuration
```

---

## Installation

1. **Clone the repository:**
   ```bash
   git clone <repo-url>
   cd Frontend
   ```
2. **Install dependencies:**
   ```bash
   npm install
   ```
3. **Set up environment variables:**
   - Copy `.env.local.example` to `.env.local` and configure your API endpoints and keys.

---

## Usage

- **Start the development server:**
  ```bash
  npm run dev
  ```
- **Build for production:**
  ```bash
  npm run build
  ```
- **Preview production build:**
  ```bash
  npm run preview
  ```

---

## Scripts
- `npm run dev` — Start development server
- `npm run build` — Build for production
- `npm run preview` — Preview production build
- `npx jsdoc -c jsdoc.json` — Generate documentation

---

## Documentation

- **JSDoc HTML documentation:**
  - Generate with: `npx jsdoc -c jsdoc.json`
  - Open `docs/index.html` in your browser.
- **Code is fully documented** with JSDoc comments for all components, hooks, context, and utilities.

---

## Technologies
- [React](https://reactjs.org/)
- [Vite](https://vitejs.dev/)
- [JSDoc](https://jsdoc.app/)
- [Sass/SCSS](https://sass-lang.com/)
- [FontAwesome](https://fontawesome.com/)
- [date-fns](https://date-fns.org/)
- [react-day-picker](https://react-day-picker.js.org/)

---

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/YourFeature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/YourFeature`)
5. Open a pull request

---

## License

This project is licensed under the MIT License.

---

## Contact

- **Project Lead:** [Your Name](mailto:your.email@example.com)
- **GitHub Issues:** [Report a bug or request a feature](../../issues)

---

¡Thank you for using and contributing to the Hotel Application Frontend!
