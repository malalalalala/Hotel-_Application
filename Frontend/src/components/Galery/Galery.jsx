import React, { useState, useEffect } from "react";
import "./galery.scss";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faHeart as faHeartBorder } from "@fortawesome/free-regular-svg-icons";
import { faHeart } from "@fortawesome/free-solid-svg-icons";
import { faShareSquare } from "@fortawesome/free-regular-svg-icons";
import Modal from "../Modal/Modal";
import ToggleIcon from "../ui/ToggleIcon/ToggleIcon";

const Galery = ({ item }) => {
  const [showModal, setShowModal] = useState(false);
  const handleKeyup = (e) => e.keyCode === 27 && setShowModal(false);

  const [likeColor, setLikeColor] = useState(false);

  const toggleModal = () => setShowModal(!showModal);

  useEffect(() => {
    if (showModal) window.addEventListener("keyup", handleKeyup);
    return () => window.removeEventListener("keyup", handleKeyup);
  });

  const handleClick = () => {
    setLikeColor(!likeColor);
  };

  return (
    <>
      <div className="galery_favourites_container">
        <FontAwesomeIcon icon={faShareSquare} size="lg" color="black" />
        <ToggleIcon
          size="lg"
          icon={likeColor ? faHeart : faHeartBorder}
          handleClick={handleClick}
          color={likeColor ? "red" : "black"}
        />
      </div>
      {/* row */}
      <div className="galery_row">
        {/* column 1 */}
        <div className="galery_column md">
          <img
            alt="photo1"
            src={item?.imageList?.[0]?.url || "/images/image.png"}
            className="galery_column_image l"
          />
        </div>
        {/* column 2 */}
        <div className="galery_column s">
          <img
            alt="photo1"
            src={item?.imageList?.[1]?.url || "/images/image.png"}
            className="galery_column_image md"
          />
          <img
            alt="photo1"
            src={item?.imageList?.[2]?.url || "/images/image.png"}
            className="galery_column_image md"
          />
        </div>
        <div className="galery_column s open_modal">
          <img
            alt="photo1"
            src={item?.imageList?.[3]?.url || "/images/image.png"}
            className="galery_column_image md"
          />
          <img
            alt="photo1"
            src={item?.imageList?.[4]?.url || "/images/image.png"}
            className="galery_column_image md"
          />
          <a type="button" onClick={toggleModal} className="open_modal_a">
            Ver más
          </a>
        </div>
        {showModal && <Modal toggleModal={toggleModal} item={item} />}
      </div>
    </>
  );
};

export default Galery;
