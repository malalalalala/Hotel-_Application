import React from "react";
import "./recommendationDetailOffers.scss";
import Divider from "../../ui/Divider/Divider";
import Fluid from "../../../components/ui/Fluid/Fluid";
import IconItem from "../../ui/IconItem/IconItem";
import {
  faKitchenSet,
  faCar,
  faTv,
  faPersonSwimming,
  faSnowflake,
  faPaw,
  faWifi,
  faMugSaucer,
} from "@fortawesome/free-solid-svg-icons";

const RecommendationDetailOffers = ({ item }) => {
  const icons = [
    faWifi,
    faSnowflake,
    faKitchenSet,
    faTv,
    faPaw,
    faPersonSwimming,
    faCar,
    faMugSaucer,
  ];

  return (
    <>
      <Fluid color="dark">
        <h2 className="title">¿Qué ofrece este lugar?</h2>
      </Fluid>
      <Divider />
      <Fluid color="dark">
        <div className="offers_row">
          {item?.featureList?.map(({ name }, index) => {
            return (
              <div className="offers_column_s" key={name}>
                <IconItem                  
                  icon={icons[index]}
                  offer={name ? name : "No ofrece"}
                />
              </div>
            );
          })}
        </div>
      </Fluid>
    </>
  );
};

export default RecommendationDetailOffers;
