import React, { useState } from "react";

/**
 * React context for user authentication and user info state.
 *
 * @type {React.Context}
 */
const Context = React.createContext({});

const initialValues = {
  name: "",
  lastname: "",
  token: "",
  userId: "",
  email: "",
  role: "",
};

/**
 * Provider component for UserContext, managing user authentication and info.
 *
 * @param {Object} props - Component props.
 * @param {React.ReactNode} props.children - The child components.
 * @returns {JSX.Element} The provider with user context value.
 */
export function UserContextProvider({ children }) {
  const [userLogged, setLogged] = useState(false);
  const [userInfo, setUserInfo] = useState(initialValues);
  const [fromBookingFlow, setFromBookingFlow] = useState(false);

  const logOut = () => {
    sessionStorage.clear();
    setLogged(false);
  };

  return (
    <Context.Provider
      value={{
        userLogged,
        setLogged,
        userInfo,
        setUserInfo,
        logOut,
        setFromBookingFlow,
        fromBookingFlow,
      }}
    >
      {children}
    </Context.Provider>
  );
}

export default Context;
