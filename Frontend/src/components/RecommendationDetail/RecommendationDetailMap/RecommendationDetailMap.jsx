import React from "react";
import Divider from "../../ui/Divider/Divider";
import Fluid from "../../../components/ui/Fluid/Fluid";
import Map from "../../ui/Map/Map";
import "./recommendationDetailMap.scss";

const RecommendationDetailMap = ({ item }) => {
  return (
    <>
      <Fluid color="dark">
        <h2 className="map_title title">¿Dónde vas a estar?</h2>
      </Fluid>
      <Divider />
      <Fluid color="dark">
        <h4 className="map_city_subtitle">
          {item?.city.name}, {item?.city.country}
        </h4>
        <div className="map_container">
          <Map item={item} />
        </div>
      </Fluid>
    </>
  );
};

export default RecommendationDetailMap;
