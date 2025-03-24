const capitalize = (str) => {
  return str?.charAt(0).toUpperCase() + str?.slice(1).toLowerCase();
};

const getInitials = (name, lastname) => {
  return name?.charAt(0).toUpperCase() + lastname?.charAt(0).toUpperCase();
};

const parseJwt = (token) => {
  return JSON.parse(atob(token.split(".")[1]));
};

const convertDate = (date) => {
  return date.split("/").reverse().join("-");
};

const convertDateEs = (date) => {
  return date.split("-").reverse().join("/");
};

export { capitalize, getInitials, parseJwt, convertDate, convertDateEs };
