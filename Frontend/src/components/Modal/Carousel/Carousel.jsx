import React, { useState } from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faChevronLeft,
  faChevronRight,
} from "@fortawesome/free-solid-svg-icons";
import "./carousel.scss";

const Carousel = ({ images, toggleModal }) => {
  const [current, setCurrent] = useState(0);
  const length = images.length;

  const nextSlide = () => {
    if (current !== length - 1) {
      setCurrent(current === length - 1 ? 0 : current + 1);
    }
  };

  const prevSlide = () => {
    if (current !== 0) {
      setCurrent(current === 0 ? length - 1 : current - 1);
    }
  };

  const handleClick = (index) => {
    setCurrent(index);
  };

  return (
    <div className="carousel_container">
      <div className="arrow left">
        <FontAwesomeIcon icon={faChevronLeft} size="lg" onClick={prevSlide} />
      </div>
      <div className="arrow right">
        <FontAwesomeIcon icon={faChevronRight} size="lg" onClick={nextSlide} />
      </div>
      <a type="button" onClick={toggleModal} className="close_modal_button">
        X
      </a>
      <img
        className="carousel_selected_img"
        src={images[current].url}
        alt={current}
      ></img>

      <h4 className="carousel_pagination">
        {current + 1}/{images.length}
      </h4>

      <div className="carousel_images_container">
        {images.slice(0, 4).map((i, index) => {
          return (
            <img
              key={index}
              className="carousel_image_miniatures"
              style={{
                opacity: `${current === index ? 0.2 : 1}`,
              }}
              alt={i.id}
              src={i.url}
              onClick={() => handleClick(index)}
            />
          );
        })}
      </div>
    </div>
  );
};

export default Carousel;
