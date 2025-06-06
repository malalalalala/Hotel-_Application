import React from "react";
import "./recommendationDetailOffers.scss";
import Divider from "../../ui/Divider/Divider";
import Fluid from "../../../components/ui/Fluid/Fluid";
import IconItem from "../../ui/IconItem/IconItem";

const RecommendationDetailOffers = ({ item }) => {
  return (
    <>
      <Fluid color="dark">
        <h2 className="title">¿Qué ofrece este lugar?</h2>
      </Fluid>
      <Divider />
      <Fluid color="dark">
        <div className="offers_row">
          {item?.featureList?.map((feature) => {
            return (
              <div className="offers_column_s" key={feature.id}>
                <IconItem                  
                  icon={feature.icon}
                  offer={feature.name ? feature.name : "No ofrece"}
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