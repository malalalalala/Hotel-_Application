import React from "react";
import "./autoComplete.scss";

/**
 * AutoComplete component for displaying suggestion list.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {boolean} props.isVisible - Whether the suggestion box is visible.
 * @param {Array<{id: number, name: string, icon: string}>} props.suggestions - List of suggestions to display.
 * @param {function} props.handleSuggestionClick - Function to call when a suggestion is clicked.
 * @returns {JSX.Element} The rendered AutoComplete component.
 */
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
