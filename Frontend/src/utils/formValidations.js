/* ------------------------------- VALIDATIONS -------------------------------- */
/* -------------------------------- REGISTER -------------------------------- */
/* ---------------------------------- email --------------------------------- */

function emailValidate(email) {
  const emailRegex =
    /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
  if (!emailRegex.test(email) && email !== "") {
    return "Debe ingresar un email válido";
  }
}

/* -------------------------------- password -------------------------------- */
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



/* -------------------------------- -------------------------------- */

export {
  emailValidate,
  passwordValidate,
  passwordComparison,
};
