import React, { useState, useContext, useEffect } from "react";
import "./login.scss";
import { NavLink } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import { faEyeSlash, faEye } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { loginUser } from "../../api/services/services";
import UserContext from "../../context/UserContext";
import GlobalContext from "../../context/GlobalContext";
import { parseJwt } from "../../utils/stringConvertions";
import LoginAlert from "./LoginAlert/LoginAlert";
import Spinner from "../../components/ui/Spinner/Spinner";
import { roles } from "../../constants/roles";

const initialValues = {
  email: "",
  password: "",
};

/**
 * Login page component for user authentication and session management.
 *
 * @component
 * @returns {JSX.Element} The rendered login page.
 */
const Login = () => {
  const [formValues, setFormValues] = useState(initialValues);
  const [error, setError] = useState("register_error_oculto");
  const [required, setRequired] = useState(false);
  const [passwordShown, setPasswordShown] = useState(false);
  const [loading, setLoading] = useState(false);
  const { itemId, setItemId } = useContext(GlobalContext);

  const navigate = useNavigate();
  const { setLogged, setUserInfo, setFromBookingFlow, fromBookingFlow } =
    useContext(UserContext);

  useEffect(() => {
    setFromBookingFlow(sessionStorage.getItem("bookingFlow"));
    setItemId(sessionStorage.getItem("itemId"));
  }, [fromBookingFlow]);

  const setStorageInfo = (info) => {
    sessionStorage.setItem("name", info.name);
    sessionStorage.setItem("lastname", info.lastname);
    sessionStorage.setItem("userId", info.userId);
    sessionStorage.setItem("logged", true);
    sessionStorage.setItem("email", info.email);
    sessionStorage.setItem("token", info.token);
    sessionStorage.setItem("role", info.role);
  };

  const handleSubmit = async (e) => {
    setLoading(true);
    e.preventDefault();
    const loginInfo = await loginUser(formValues);
    if (loginInfo.status === 200) {
      const userData = loginInfo.data.response;
      setLogged(true);
      const payload = parseJwt(userData.token);
      setStorageInfo({
        name: payload.name,
        lastname: payload.lastName,
        userId: payload.idUser,
        email: payload.sub,
        token: userData.token,
        role: userData.authorities[0].authority,
      });
      setUserInfo({
        name: sessionStorage.getItem("name"),
        lastname: sessionStorage.getItem("lastname"),
        email: sessionStorage.getItem("email"),
        userId: sessionStorage.getItem("userId"),
        token: sessionStorage.getItem("token"),
        role: sessionStorage.getItem("role"),
      });
      console.log("cabeza", userData);

      if (userData.authorities[0].authority === roles.ROLE_USER) {
        setLoading(false);
        if (fromBookingFlow && itemId) {
          navigate(`/products/${itemId}`);
        } else {
          navigate("/");
        }
      }
      if (userData.authorities[0].authority === roles.ROLE_ADMIN) {
        setLoading(false);
        navigate("/");
      }

      setFromBookingFlow(sessionStorage.setItem("bookingFlow", false));
    } else if (loginInfo.status == 401) {
      setLoading(false);
      setError("register_error");
    } else {
      setLoading(false);
      setError("connection_error");
    }
  };

  const handleValueChange = (e) => {
    setFormValues({
      ...formValues,
      [e.target.name]: e.target.value,
    });
  };

  const togglePasswordVisiblity = () => {
    setPasswordShown((prevState) => !prevState);
  };

  const handleClick = () => setRequired(true);

  return (
    <div className="login_container">
      {loading ? (
        <Spinner />
      ) : (
        <div className="login_container_content">
          {sessionStorage.getItem("bookingFlow") === "true" ? (
            <LoginAlert />
          ) : (
            ""
          )}
          <h1 className="login_header">Iniciar sesión</h1>
          <form className="login_form_container" onSubmit={handleSubmit}>
            <div className="login_form_group">
              <label htmlFor="email">Correo electrónico</label>
              <input
                type="email"
                id="email"
                placeholder="example@domain.com"
                name="email"
                value={formValues.email}
                onChange={handleValueChange}
                required={required}
              />
            </div>
            <div className="login_form_group">
              <label htmlFor="password">Contraseña</label>
              <input
                type={passwordShown ? "text" : "password"}
                name="password"
                id="password"
                value={formValues.password}
                onChange={handleValueChange}
                required={required}
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
            </div>
            <small id="small" className={error}>
              {error === "register_error"
                ? "Por favor vuelva a intentarlo, las credenciales son inválidas"
                : `Error de conexión.
            Por favor intente más tarde`}
            </small>
            <div className="login_form_group_submit">
              <button type="submit" onClick={handleClick}>
                Ingresar
              </button>
              <p>
                ¿Aún no tenes cuenta?
                <NavLink to="/register"> Registrate</NavLink>
              </p>
            </div>
          </form>
        </div>
      )}
    </div>
  );
};

export default Login;
