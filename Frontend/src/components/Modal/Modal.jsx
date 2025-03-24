import React from "react";
import "./modal.scss";
import Carousel from "../Modal/Carousel/Carousel";

const Modal = ({ toggleModal, item }) => {
  return (
    <div className="modal">
      <Carousel images={item.imageList} toggleModal={toggleModal} />
    </div>
  );
};

export default Modal;
