import React, { useState, useEffect } from "react";
import "./slider.scss";

/**
 * Slider component for displaying a carousel of images with automatic scrolling.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {Object} props.item - The item containing imageList for the slider.
 * @returns {JSX.Element} The rendered slider component.
 */
const Slider = ({ item }) => {
  const [currentIndex, setCurrentIndex] = useState(0);

  const carouselInfinitScroll = () => {
    if (currentIndex === item?.imageList.length - 1) {
      return setCurrentIndex(0);
    }
    return setCurrentIndex(currentIndex + 1);
  };

  useEffect(() => {
    const interval = setInterval(() => {
      carouselInfinitScroll();
    }, 2000);
    return () => clearInterval(interval);
  });

  return (
    <div className="slider_container_tablet">
      {item?.imageList?.map((i, index) => {
        return (
          <img
            className="slider_item"
            style={{
              transform: `translate(-${currentIndex * 100}%)`,
            }}
            key={index}
            src={i.url}
          />
        );
      })}
      <h3 className="slider_pagination">
        {currentIndex + 1}/{item?.imageList.length}
      </h3>
    </div>
  );
};

export default Slider;
