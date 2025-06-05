let apiUrl;

// === DEBUGGING DETALLADO ===
console.log("🔍 === DEBUGGING API URL CONFIGURATION ===");
console.log("📍 window.location.hostname:", window.location.hostname);
console.log("📍 window.location.href:", window.location.href);
console.log("🌐 VITE_BACKEND_URL:", import.meta.env.VITE_BACKEND_URL);
console.log("🔧 Todas las variables VITE_:", 
  Object.keys(import.meta.env)
    .filter(key => key.startsWith('VITE_'))
    .reduce((obj, key) => {
      obj[key] = import.meta.env[key];
      return obj;
    }, {})
);


if (import.meta.env.VITE_BACKEND_URL) {
  apiUrl = import.meta.env.VITE_BACKEND_URL;
    console.log("✅ Usando VITE_BACKEND_URL:", apiUrl);
} else if (window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1') {
  apiUrl = 'http://localhost:8080';
  console.log("🏠 Usando localhost:", apiUrl);
} else {
  // URL por defecto para producción
  apiUrl = 'https://hotel-application-production.up.railway.app';
  console.log("🚀 Usando URL por defecto de producción:", apiUrl);

}
console.log("🎯 API URL FINAL:", apiUrl);
console.log("🔍 === FIN DEBUGGING ===");

export const config = {
  apiUrl
};