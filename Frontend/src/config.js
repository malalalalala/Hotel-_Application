let apiUrl;

if (import.meta.env.VITE_BACKEND_URL) {
  apiUrl = import.meta.env.VITE_BACKEND_URL;
} else if (window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1') {
  apiUrl = 'http://localhost:8080';
} else {
  // URL por defecto para producción
  apiUrl = 'https://hotel-application-production.up.railway.app';
}

export const config = {
  apiUrl
};