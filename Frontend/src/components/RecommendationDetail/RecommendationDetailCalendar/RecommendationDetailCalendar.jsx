import React, { useContext } from "react";
import "./recommendationDetailCalendar.scss";
import DateRangePicker from "../../../components/Calendar/DateRangePicker";
import Button from "../../../components/ui/Button/Button";
import Fluid from "../../../components/ui/Fluid/Fluid";
import { Link } from "react-router-dom";
import UserContext from "../../../context/UserContext";
import GlobalContext from "../../../context/GlobalContext";
import { useNavigate } from "react-router-dom";

/**
 * RecommendationDetailCalendar component for displaying available dates and reservation button.
 *
 * @component
 * @param {Object} props - Component props.
 * @param {Object} props.item - The item containing the id for reservation and calendar.
 * @returns {JSX.Element} The rendered recommendation detail calendar component.
 */
const RecommendationDetailCalendar = ({ item }) => {
  const { userLogged, setFromBookingFlow } = useContext(UserContext);
  const { setItemId } = useContext(GlobalContext);
  const navigate = useNavigate();

  const handleClick = () => {
    setFromBookingFlow(sessionStorage.setItem("bookingFlow", true));
    sessionStorage.setItem("alertmessage", "realizar una reserva");
    setItemId(sessionStorage.setItem("itemId", item.id));
    navigate(userLogged ? "/reservation" : "/login");
  };

  return (
    <>
      <Fluid bgColor="white" color="dark">
        <h2 className="available_dates_title title">Fechas disponibles</h2>
        <div className="available_dates_container">
          <DateRangePicker itemId={item.id} />
          <div className="available_dates_reservation">
            <h4>Agregá tus fechas de viaje para obtener precios exactos</h4>
            <Link to={userLogged ? "/reservation" : "/login"}>
              <Button type="submit" variant="button7" onClick={handleClick}>
                Iniciar reserva
              </Button>
            </Link>
          </div>
        </div>
      </Fluid>
    </>
  );
};

export default RecommendationDetailCalendar;
