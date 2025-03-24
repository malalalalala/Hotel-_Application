const getRoleStyle = (role) => {
  switch (role) {
    case "ROLE_USER":
      return "";
    case "ROLE_ADMIN":
      return "_admin";
    default:
      return "";
  }
};

export default getRoleStyle;
