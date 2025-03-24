import React from "react";
import GoogleMaps from "simple-react-google-maps";

const API_MAPS = import.meta.env.VITE_APP_MAP;

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
