import React from "react";
import GoogleMaps from "simple-react-google-maps";

const API_MAPS = import.meta.env.VITE_APP_MAP;

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

export default Map;