import React from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faHeart,
  faLocationDot,
  faStar,
  faCar,
  faTv,
  faPersonSwimming,
  faPaw,
  faKitchenSet,
  faSnowflake,
  faWifi,
} from "@fortawesome/free-solid-svg-icons";
import "../recommendations.scss";
import { NavLink } from "react-router-dom";
import Button from "../../ui/Button/Button";

const toFontawesome = (icon) => {
  switch (icon) {
    case "faWifi":
      return faWifi;
    case "faCar":
      return faCar;
    case "faTV":
      return faTv;
    case "faPersonSwimming":
      return faPersonSwimming;
    case "faSnowflake":
      return faSnowflake;
    case "faPaw":
      return faPaw;
    case "faKitchenSet":
      return faKitchenSet;
    default:
      "";
      break;
  }
};

const RecommendationCard = ({
  id,
  category,
  categoryName,
  opinion,
  location,
  categoryDescription,
  point,
  image_url,
  star,
  featureList,
}) => {
  return (
    <div className="recommendations_card_container">
      <div
        className="recommendations_card_image"
        style={{ backgroundImage: `url(${image_url})` }}
      >
        <FontAwesomeIcon className="icon_heart" icon={faHeart} />
      </div>
      <div className="recommendations_card_info">
        <div className="recommendations_card_header">
          <div className="recommendations_card_header_title_container">
            <div className="recommendations_card_header_category">
              <h5 className="recommendations_card_header_category_text">
                {category?.toUpperCase()}
              </h5>
              {star > 0 ? (
                [...Array(star)].map((s, index) => {
                  return (
                    <FontAwesomeIcon
                      key={index}
                      icon={faStar}
                      color="green"
                      size="xs"
                      className="star"
                    />
                  );
                })
              ) : (
                <div className="recommendations_card_header_new">
                  <FontAwesomeIcon
                    key={0}
                    icon={faStar}
                    size="xs"
                    className="star"
                  />
                  <h5 className="new_text">Nuevo</h5>
                </div>
              )}
            </div>
            <h1>{categoryName}</h1>
          </div>
          {point > 0 && (
            <div className="recommendations_card_container_points">
              <div className="recommendations_card_points">{point}</div>
              <h5 className="recommendations_card_opinion">{opinion}</h5>
            </div>
          )}
        </div>
        <div className="recommendations_card_location_container">
          <div className="recommendations_card_location">
            <div className="recommendations_card_location_details">
              <FontAwesomeIcon icon={faLocationDot} size="sm" />
              <h5>{location}</h5>
            </div>
            <div className="recommendations_card_location_map">
              <NavLink to={`/products/${id}`}>MOSTRAR EN EL MAPA</NavLink>
            </div>
          </div>
          {featureList?.map(
            ({ icon }, i) =>
              icon && (
                <FontAwesomeIcon
                  icon={toFontawesome(icon)}
                  size="sm"
                  key={i}
                  className="recommendations_card_icons"
                />
              )
          )}
        </div>
        <div className="recommendations_card_text">
          <h5 className="recommendations_card_text_content">
            {categoryDescription}
          </h5>
          <NavLink to={`/products/${id}`}>más...</NavLink>
        </div>
        <div className="recommendations_card_button">
          <NavLink to={`/products/${id}`}>
            <Button variant="button2">ver más</Button>
          </NavLink>
        </div>
      </div>
    </div>
  );
};

export default RecommendationCard;
