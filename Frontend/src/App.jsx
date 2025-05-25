import "./styles/styles.scss";
import { Routes, Route } from "react-router-dom";
import RecommendationDetails from "./pages/RecommendationDetails/RecommendationDetails";
import Home from "./pages/Home/Home";
import Login from "./pages/Login/Login";
import Register from "./pages/Register/Register";
import Layout from "../src/pages/Layout/Layout";
import Reservation from "../src/pages/Reservation/Reservation";
import { GlobalContextProvider } from "../src/context/GlobalContext";
import { UserContextProvider } from "../src/context/UserContext";
import RecommendationContent from "./pages/RecommendationContent/RecommendationContent";
import Confirmed from "../src/pages/Confirmed/Confirmed";
import ProductAdministration from "./pages/ProductAdministration/ProductAdministration";
import ProtectedRoute from "./helpers/ProtectedRoute";
import { roles } from "./constants/roles";

function App() {
  return (
    <>
      <UserContextProvider>
        <GlobalContextProvider>
          <Routes>
            <Route path="/" element={<Layout />}>
              <Route index element={<Home />} />
              <Route path="login" element={<Login />} />
              <Route path="register" element={<Register />} />
              <Route path="products" element={<RecommendationDetails />}>
                <Route path=":productId" element={<RecommendationContent />} />
              </Route>
              <Route
                path="/reservation"
                element={
                  <ProtectedRoute role={roles.ROLE_USER} from="reservation">
                    <Reservation />
                  </ProtectedRoute>
                }
              />
              <Route path="confirmed" element={<Confirmed />} />

              <Route
                path="/administration"
                element={
                  <ProtectedRoute role={roles.ROLE_ADMIN} from="administration">
                    <ProductAdministration />
                  </ProtectedRoute>
                }
              />

              <Route
                path="*"
                element={<h1 className="not-found">Page Not Found</h1>}
              />
            </Route>
          </Routes>
        </GlobalContextProvider>
      </UserContextProvider>
    </>
  );
}

export default App;
