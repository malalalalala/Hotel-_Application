import { roles } from "../constants/roles";

const getRoleStyle = (role) => {
  switch (role) {
    case roles.ROLE_USER:
      return "";
    case roles.ROLE_ADMIN:
      return "_admin";
    default:
      return "";
  }
};

export default getRoleStyle;
