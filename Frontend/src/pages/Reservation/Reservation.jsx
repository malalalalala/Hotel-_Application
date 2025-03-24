import React, { useEffect, useState, useContext } from "react";
import Fluid from "../../components/ui/Fluid/Fluid";
import "./reservation.scss";
import DateRangePicker from "../../components/Calendar/DateRangePicker";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCircleCheck } from "@fortawesome/free-regular-svg-icons";
import { faStar, faLocationDot } from "@fortawesome/free-solid-svg-icons";
import Button from "../../components/ui/Button/Button";
import Divider from "../../components/ui/Divider/Divider";
import UserContext from "../../context/UserContext";
import GlobalContext from "../../context/GlobalContext";
import { getProductById } from "../../api/services/services";
import Spinner from "../../components/ui/Spinner/Spinner";
import { useNavigate } from "react-router-dom";
import { convertDate } from "../../utils/stringConvertions";
import { createReservations } from "../../api/services/services";
import Input from "../../components/ui/Input/Input";
import Select from "../../components/ui/Select/Select";
import RecommendationDetailHeader from "../../components/RecommendationDetail/RecommendationDetailHeader/RecommendationDetailHeader";
import RecommendationDetailRules from "../../components/RecommendationDetail/RecommendationDetailRules/RecommendationDetailRules";

const Reservation = () => {
  const [fromValue, setFromValue] = useState("__/__/__");
  const [toValue, setToValue] = useState("__/__/__");
  const [isDisabledRange, setIsDisabledRange] = useState(false);
  const [loadingItem, setLoadingItem] = useState(true);
  const [item, setItem] = useState();
  const [city, setCity] = useState(item?.city.name);
  const [disabled, setDisabled] = useState(true);
  const navigate = useNavigate();

  const { userInfo, logOut } = useContext(UserContext);
  const { itemId, setItemId } = useContext(GlobalContext);

  const handleChange = (e) => {
    setCity(e.target.value);
  };

  const reservationInfo = {
    check_in: convertDate(fromValue),
    check_out: convertDate(toValue),
    product: {
      id: itemId,
    },
    user: {
      id: userInfo.userId,
    },
  };

  const handleSubmit = async (e) => {
    setLoadingItem(true);
    e.preventDefault();
    if (!disabled) {
      const reservationResponse = await createReservations(
        reservationInfo,
        userInfo.token
      );
      if (reservationResponse.status === 201) {
        navigate("/confirmed", {
          state: {
            title: "¡Muchas gracias!",
            text: "Su reserva se ha realizado con éxito",
            buttonText: "ok",
            bgColor: "bgColor",
          },
        });
      }
      if (reservationResponse.status === 403) {
        logOut();
      }
    }
    setLoadingItem(false);
  };

  useEffect(() => {
    setItemId(sessionStorage.getItem("itemId"));
    const fetchProductById = async () => {
      const productsById = await getProductById(
        sessionStorage.getItem("itemId")
      );
      setItem(productsById.data);
      setLoadingItem(false);
      setCity(productsById.data.city.name);
    };
    fetchProductById();
  }, []);

  useEffect(() => {
    if (
      Boolean(
        fromValue &&
          toValue &&
          toValue !== "__/__/__" &&
          fromValue !== "__/__/__" &&
          !isDisabledRange
      )
    ) {
      setDisabled(false);
    } else {
      setDisabled(true);
    }
  }, [fromValue, toValue]);

  // const optionsAM = Array.from({ length: 12 }, (v, i) => `${i + 1} AM`);
  // const optionsPM = Array.from({ length: 12 }, (v, i) => `${i + 1} PM`);
  const options = Array.from({ length: 12 }, (v, i) => `${i + 1} AM`).concat(
    Array.from({ length: 12 }, (v, i) => `${i + 1} PM`)
  );

  return (
    <>
      <RecommendationDetailHeader item={item} />
      <Fluid bgColor="white" color="dark">
        <h1 className="reservation_title title">Completá tus datos</h1>
        {loadingItem ? (
          <Spinner />
        ) : (
          <form className="reservation-form" onSubmit={handleSubmit}>
            <div className="reservation_container">
              <div className="reservation_container_content">
                <div className="reservation_container_user">
                  <div className="reservation_container_user_group_column">
                    <Input
                      inputLabel="Nombre"
                      inputType="text"
                      inputName="name"
                      id="name"
                      placeholder={userInfo.name}
                      inputValue={userInfo.name}
                      disabled
                    />
                  </div>
                  <div className="reservation_container_user_group_column">
                    <Input
                      inputLabel="Apellido"
                      inputType="text"
                      inputName="lastName"
                      id="lastName"
                      placeholder={userInfo.lastname}
                      inputValue={userInfo.lastname}
                      disabled
                    />
                  </div>
                  <div className="reservation_container_user_group_column">
                    <Input
                      inputLabel="Correo Electrónico"
                      inputType="text"
                      inputName="email"
                      id="email"
                      placeholder={userInfo.email}
                      inputValue={userInfo.email}
                      disabled
                    />
                  </div>
                  <div className="reservation_container_user_group_column">
                    <Input
                      inputLabel="Ciudad"
                      inputType="text"
                      inputName="city"
                      id="city"
                      placeholder={city}
                      inputValue={city}
                      onChange={handleChange}
                    />
                  </div>
                </div>
                <h1 className="reservation_title title">
                  Seleccioná tu fecha de reserva
                </h1>
                <div className="reservation_container_calendar">
                  <DateRangePicker
                    setFromValue={setFromValue}
                    setToValue={setToValue}
                    setIsDisabledRange={setIsDisabledRange}
                    itemId={itemId}
                  />
                </div>
                {isDisabledRange && (
                  <div className="reservation_disabled_range_picker">
                    El rango de fechas seleccionado no se encuentra disponible
                    para reservas
                  </div>
                )}
                <h1 className="reservation_title title">
                  Tu horario de llegada
                </h1>
                <div className="reservation_container_time">
                  <div className="reservation_container_check-in">
                    <FontAwesomeIcon icon={faCircleCheck} size="lg" />
                    <p>
                      Tu habitación va a estar lista para el check-in entre las
                      10:00 AM y las 11:00 PM
                    </p>
                  </div>
                  <div className="reservation_container_dropdown">
                    <Select
                      inputLabel="Indicá tu horario estimado de llegada "
                      placeholder="10:00 AM"
                      options={options}
                    />
                  </div>
                </div>
              </div>

              <div className="reservation_container_content_confirm">
                <div className="reservation_container_check">
                  <div className="reservation_container_check_title">
                    <h1>Detalle de la reserva</h1>
                  </div>
                  <div className="reservation_container_check_content">
                    <div
                      className="reservation_container_check_img"
                      style={{
                        backgroundImage: `url(${item?.imageList?.[0]?.url})`,
                      }}
                    />
                    <div className="reservation_container_check_body">
                      <h4>{item?.category.title}</h4>
                      <h1>{item?.title}</h1>
                      {[...Array(item?.star)].map((s, index) => {
                        return (
                          <FontAwesomeIcon
                            key={index}
                            icon={faStar}
                            color="red"
                            size="xs"
                            className="star"
                          />
                        );
                      })}
                      <div className="reservation_container_check_body_location">
                        <FontAwesomeIcon icon={faLocationDot} size="sm" />
                        <h5 className="bold">
                          {`${item.address}, ${item.city.name}
                          ${item.city.state}, ${item.city.country}`}
                        </h5>
                      </div>
                      <Divider color="grey" />
                      <div className="reservation_container_check_body_date">
                        <h3>Check in</h3>
                        <h3>{fromValue ? fromValue : "__/__/__"}</h3>
                      </div>
                      <Divider color="grey" />
                      <div className="reservation_container_check_body_date">
                        <h3>Check out</h3>
                        <h3>{toValue ? toValue : "__/__/__"}</h3>
                      </div>
                      <Divider color="grey" />
                      <div className="reservation_container_check_button">
                        <Button
                          type="submit"
                          variant="button8"
                          disabled={disabled}
                        >
                          Confirmar reserva
                        </Button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
        )}
      </Fluid>
      <RecommendationDetailRules item={item} />
    </>
  );
};

export default Reservation;
