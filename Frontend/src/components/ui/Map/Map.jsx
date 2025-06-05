import React from "react";
import GoogleMaps from "simple-react-google-maps";

const API_MAPS = import.meta.env.VITE_APP_MAP;
console.log("MARRANO",API_MAPS,"CERDO",import.meta,"CONEJO",import.meta.env)

console.log("=== DEBUG VARIABLES ===");
console.log("API_MAPS:", API_MAPS);
console.log("Todas las variables VITE_:", Object.keys(import.meta.env).filter(key => key.startsWith('VITE_')));
console.log("import.meta.env:", import.meta.env);
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
  return (
    <GoogleMaps
      style={{ borderRadius: "0.5rem", height: "540px", width: "100%" }}
      zoom={15}
      center={{ lat: item?.latitude, lng: item?.length }}
      apiKey={API_MAPS}
      markers={[{ lat: item?.latitude, lng: item?.length }]}
    />
  );
};

export default Map;