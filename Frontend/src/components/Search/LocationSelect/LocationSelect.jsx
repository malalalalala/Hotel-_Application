import React, { useContext, useState } from "react";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faLocationDot } from "@fortawesome/free-solid-svg-icons";
import "./locationSelect.scss";
import GlobalContext from "../../../context/GlobalContext";

const SearchLocation = () => {
  const { selectedOption, setSelectedOption, cities } =
    useContext(GlobalContext);
  const [isOpen, setIsOpen] = useState(false);

  const toggling = () => setIsOpen((prevState) => !prevState);

  const handleClick = ({cityId, cityName}) => () => {
    setSelectedOption({cityId, cityName});
    setIsOpen(false);
  };

  const orderedCities = (cities) => {
    return cities.sort((c1, c2) => {
      if (c1.name > c2.name) {
        return 1;
      }
      if (c1.name < c2.name) {
        return -1;
      }
      return 0;
    });
  };

  return (
    <section className="location">
      <div className="location_select">
        <div
          onClick={toggling}
          className={`preselected_option ${selectedOption.cityName ? "selected" : ""}`}
        >
          <div className="icon_preselected">
            <FontAwesomeIcon icon={faLocationDot} />
          </div>
          {selectedOption.cityName || "¿A dónde vamos?"}
        </div>

        {isOpen && (
          <div className="list_container">
            <ul className="location_select">
              {orderedCities(cities)?.map((city) => (
                <li
                  value={city.name}
                  key={city.id}
                  className="location_select"
                  onClick={handleClick({cityId: city.id, cityName: city.name})}
                >
                  <div className="list_content">
                    <div className="text_container">
                      <div className="icon">
                        <FontAwesomeIcon icon={faLocationDot} />
                      </div>
                      <div className="city_name">
                        {city.name}
                        <br />
                        <span className="country">{city.country}</span>
                      </div>
                    </div>
                    <hr className="divider" />
                  </div>
                </li>
              ))}
            </ul>
          </div>
        )}
      </div>
    </section>
  );
};

export default SearchLocation;
