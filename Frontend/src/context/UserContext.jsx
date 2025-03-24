import React, { useState } from "react";

const Context = React.createContext({});

const initialValues = {
  name: "",
  lastname: "",
  token: "",
  userId: "",
  email: "",
  role: "",
};

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
