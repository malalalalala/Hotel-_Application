import React, { useState, useEffect } from "react";
import GoogleMaps from "simple-react-google-maps";

/**
 * Map component for displaying a Google Map with a marker.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {Object} props.item - The item containing latitude and longitude.
 * @param {number} props.item.latitude - Latitude for the map center and marker.
 * @param {number} props.item.length - Longitude for the map center and marker.
 * @returns {JSX.Element} The rendered map component.
 */
const Map = ({ item }) => {
  const [apiKey, setApiKey] = useState(null);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    // Pequeño delay para asegurar que las variables estén disponibles
    const timer = setTimeout(() => {
      const API_MAPS = import.meta.env.VITE_APP_MAP;
      console.log("🗺️ Cargando mapa con API Key:", API_MAPS);
      
      if (API_MAPS && API_MAPS !== 'undefined') {
        setApiKey(API_MAPS);
      } else {
        console.error("❌ VITE_APP_MAP no está disponible:", API_MAPS);
      }
      setIsLoading(false);
    }, 100); // 100ms de delay

    return () => clearTimeout(timer);
  }, []);

  // Validar coordenadas
  if (!item?.latitude || !item?.length) {
    return (
      <div 
        style={{ 
          borderRadius: "0.5rem", 
          height: "540px", 
          width: "100%",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          backgroundColor: "#f5f5f5",
          color: "#666"
        }}
      >
        📍 Coordenadas no disponibles
      </div>
    );
  }

  // Estado de carga
  if (isLoading || !apiKey) {
    return (
      <div 
        style={{ 
          borderRadius: "0.5rem", 
          height: "540px", 
          width: "100%",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          backgroundColor: "#f5f5f5",
          color: "#666"
        }}
      >
        {isLoading ? "🔄 Cargando mapa..." : "❌ Error: API Key no disponible"}
      </div>
    );
  }

  return (
    <GoogleMaps
      style={{ borderRadius: "0.5rem", height: "540px", width: "100%" }}
      zoom={15}
      center={{ lat: item?.latitude, lng: item?.length }}
      apiKey={apiKey}
      markers={[{ lat: item?.latitude, lng: item?.length }]}
    />
  );
};

export default Map;