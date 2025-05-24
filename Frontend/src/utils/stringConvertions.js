/**
 * Capitalizes the first letter of a string and lowercases the rest.
 * @param {string} str - The input string.
 * @returns {string} The capitalized string.
 */
const capitalize = (str) => {
  return str?.charAt(0).toUpperCase() + str?.slice(1).toLowerCase();
};

/**
 * Gets the initials from a name and lastname.
 * @param {string} name - The first name.
 * @param {string} lastname - The last name.
 * @returns {string} The initials in uppercase.
 */
const getInitials = (name, lastname) => {
  return name?.charAt(0).toUpperCase() + lastname?.charAt(0).toUpperCase();
};

/**
 * Decodes a JWT token and returns its payload.
 * @param {string} token - The JWT token.
 * @returns {Object} The decoded payload.
 */
const parseJwt = (token) => {
  return JSON.parse(atob(token.split(".")[1]));
};

/**
 * Converts a date from DD/MM/YYYY to YYYY-MM-DD format.
 * @param {string} date - The date in DD/MM/YYYY format.
 * @returns {string} The date in YYYY-MM-DD format.
 */
const convertDate = (date) => {
  return date.split("/").reverse().join("-");
};

/**
 * Converts a date from YYYY-MM-DD to DD/MM/YYYY format.
 * @param {string} date - The date in YYYY-MM-DD format.
 * @returns {string} The date in DD/MM/YYYY format.
 */
const convertDateEs = (date) => {
  return date.split("-").reverse().join("/");
};

export { capitalize, getInitials, parseJwt, convertDate, convertDateEs };
