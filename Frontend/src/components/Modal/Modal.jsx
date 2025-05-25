import React from "react";
import "./modal.scss";
import Carousel from "../Modal/Carousel/Carousel";

/**
 * Modal component for displaying a carousel of images in a modal dialog.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {function} props.toggleModal - Function to toggle the modal visibility.
 * @param {Object} props.item - The item containing imageList for the carousel.
 * @returns {JSX.Element} The rendered modal component.
 */
const Modal = ({ toggleModal, item }) => {
  return (
    <div className="modal">
      <Carousel images={item.imageList} toggleModal={toggleModal} />
    </div>
  );
};

export default Modal;
