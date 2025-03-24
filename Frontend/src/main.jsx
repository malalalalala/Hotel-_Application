import React from "react";
import App from "./App";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import ScrollToTop from "../src/helpers/ScrollToTop/ScrollToTop";

ReactDOM.createRoot(document.getElementById("root")).render(
  // <React.StrictMode>
  <BrowserRouter>
    <ScrollToTop />
    <App />
  </BrowserRouter>
  // </React.StrictMode>
);
