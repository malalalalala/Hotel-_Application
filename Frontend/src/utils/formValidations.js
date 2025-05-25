/* ------------------------------- VALIDATIONS -------------------------------- */
/* -------------------------------- REGISTER -------------------------------- */
/* ---------------------------------- email --------------------------------- */

/**
 * Validates an email address format.
 * @param {string} email - The email to validate.
 * @returns {string|undefined} Error message if invalid, otherwise undefined.
 */
function emailValidate(email) {
  const emailRegex =
    /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
  if (!emailRegex.test(email) && email !== "") {
    return "Debe ingresar un email válido";
  }
}

/* -------------------------------- password -------------------------------- */
/**
 * Validates a password for minimum length.
 * @param {string} password - The password to validate.
 * @returns {string|undefined} Error message if invalid, otherwise undefined.
 */
function passwordValidate(password) {
  if (password.length <= 6 && password !== "") {
    return "La contraseña debe tener más de 6 caracteres";
  }
}

function passwordComparison(password1, password2) {
  if (password1 !== password2 && password2 !== "") {
    return "Las contraseñas no coinciden";
  }
}

/**
 * Compares two passwords for equality.
 * @param {string} password1 - The first password.
 * @param {string} password2 - The second password.
 * @returns {string|undefined} Error message if passwords do not match, otherwise undefined.
 */

/* -------------------------------- -------------------------------- */

export {
  emailValidate,
  passwordValidate,
  passwordComparison,
};
