import React, { useState, useEffect } from "react";
import "./slider.scss";

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
      {item?.imageList.map((i, index) => {
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
