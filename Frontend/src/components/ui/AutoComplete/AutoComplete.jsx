import React from "react";
import "./autoComplete.scss";

const AutoComplete = ({ isVisible, suggestions, handleSuggestionClick }) => {
  return (
    <div className={`${isVisible ? "show suggestion-box" : "suggestion-box"}`}>
      <ul>
        {suggestions.map(({ id, name, icon }, index) => {
          return (
            <li
              key={index}
              onClick={() => handleSuggestionClick(icon, id, name)}
            >
              {name}
            </li>
          );
        })}
      </ul>
    </div>
  );
};

export default AutoComplete;
