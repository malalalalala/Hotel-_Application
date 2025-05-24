import { roles } from "../constants/roles";

/**
 * Returns a style suffix based on the user role.
 *
 * @param {string} role - The user role.
 * @returns {string} The style suffix for the given role.
 */
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
