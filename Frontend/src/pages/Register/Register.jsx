import React from "react";
import "./register.scss";
import { useNavigate } from "react-router-dom";
import { NavLink } from "react-router-dom";
import { useState } from "react";
import {
  emailValidate,
  passwordValidate,
  passwordComparison,
} from "../../utils/formValidations";
import {
  faUserCircle,
  faEyeSlash,
  faEye,
} from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { registerUser } from "../../api/services/services";

const initialValues = {
  name: "",
  lastName: "",
  email: "",
  password: "",
  password2: "",
  role: {
    id: 2,
  },
};

/**
 * Register page component for user account creation and validation.
 *
 * @component
 * @returns {JSX.Element} The rendered register page.
 */
const Register = () => {
  const [error, setError] = useState("register_error_oculto");
  const [required, setRequired] = useState(false);
  const [formValues, setFormValues] = useState(initialValues);
  const errorMessageEmail = emailValidate(formValues.email);
  const errorMessagePassword = passwordValidate(formValues.password);
  const errorMessagePasswordComparison = passwordComparison(
    formValues.password,
    formValues.password2
  );
  const [success, setSuccess] = useState(false);
  const [passwordShown, setPasswordShown] = useState(false);
  const navigate = useNavigate();

  const handleValueChange = (e) => {
    setFormValues({
      ...formValues,
      [e.target.name]: e.target.value,
    });
  };

  const togglePasswordVisiblity = () => {
    setPasswordShown((prevState) => !prevState);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (
      !emailValidate(formValues.email) &&
      !passwordValidate(formValues.password) &&
      !passwordComparison(formValues.password, formValues.password2)
    ) {
      const registerInfo = await registerUser(formValues);
      if (registerInfo.status === 200 || registerInfo.status === 201) {
        setTimeout(() => {
          navigate("/login");
        }, 1000);
        return setSuccess(
          <>
            <FontAwesomeIcon icon={faUserCircle} size="sm" className="full" />
            <span>Usuario registrado con éxito</span>
          </>
        );
      }
    } else {
      setError("register_error");
    }
  };

  const handleClick = () => setRequired(true);
  return (
    <div className="register_container">
      <div className="register_container_content">
        <h1 className="register_header">Crear cuenta</h1>
        <form className="register_form_container" onSubmit={handleSubmit}>
          <div className="register_form_container_medium">
            <div className="register_form_group_medium">
              <label htmlFor="name">Nombre</label>
              <input
                type="text"
                name="name"
                id="name"
                value={formValues.name}
                required={required}
                onChange={handleValueChange}
              />
            </div>
            <div className="register_form_group_medium">
              <label htmlFor="lastName">Apellido</label>
              <input
                type="text"
                name="lastName"
                id="lastName"
                value={formValues.lastName}
                required={required}
                onChange={handleValueChange}
              />
            </div>
          </div>
          <div className="register_form_group">
            <label htmlFor="email">Correo electrónico</label>
            <input
              type="email"
              placeholder="example@domain.com"
              name="email"
              id="email"
              value={formValues.email}
              required={required}
              onChange={handleValueChange}
            />
            <small
              className={
                errorMessageEmail ? "register_error" : "register_oculto"
              }
            >
              {errorMessageEmail}
            </small>
          </div>
          <div className="register_form_group">
            <label htmlFor="password">Contraseña</label>
            <input
              type={passwordShown ? "text" : "password"}
              name="password"
              id="password"
              required={required}
              value={formValues.password}
              onChange={handleValueChange}
            />
            <i
              className="register_password_icon"
              onClick={togglePasswordVisiblity}
            >
              <FontAwesomeIcon
                icon={passwordShown ? faEyeSlash : faEye}
                size="sm"
                className="full"
              />
            </i>
            <small
              className={
                errorMessagePassword ? "register_error" : "register_oculto"
              }
            >
              {errorMessagePassword}
            </small>
          </div>
          <div className="register_form_group">
            <label htmlFor="password2">Confirmar Contraseña</label>
            <input
              type={passwordShown ? "text" : "password"}
              name="password2"
              id="password2"
              value={formValues.password2}
              required={required}
              onChange={handleValueChange}
            />
            <i
              className="register_password_icon"
              onClick={togglePasswordVisiblity}
            >
              <FontAwesomeIcon
                icon={passwordShown ? faEyeSlash : faEye}
                size="sm"
                className="full"
              />
            </i>
            <small
              className={
                errorMessagePasswordComparison
                  ? "register_error"
                  : "register_error_oculto"
              }
            >
              {errorMessagePasswordComparison}
            </small>
          </div>
          <div className="register_form_sucess">
            {success ? <p>{success}</p> : ""}
          </div>
          <div className="register_form_group_submit">
            <button type="submit" onClick={handleClick}>
              Crear cuenta
            </button>
            <p>
              ¿Ya tienes una cuenta?
              <NavLink to="/login"> Iniciar sesión</NavLink>
            </p>
          </div>
        </form>
      </div>
    </div>
  );
};

export default Register;
