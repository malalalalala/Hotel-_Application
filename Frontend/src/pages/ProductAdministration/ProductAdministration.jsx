import React, { useState, useContext } from "react";
import Fluid from "../../components/ui/Fluid/Fluid";
import "./productAdministration.scss";
import { useNavigate } from "react-router-dom";
import { NavLink } from "react-router-dom";
import { faChevronLeft } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import Spinner from "../../components/ui/Spinner/Spinner";
import Button from "../../components/ui/Button/Button";
import ProductData from "../../components/ProductDetail/ProductData/ProductData";
import ProductAttribute from "../../components/ProductDetail/ProductAttribute/ProductAttribute";
import ProductPolicy from "../../components/ProductDetail/ProductPolicy/ProductPolicy";
import ProductImage from "../../components/ProductDetail/ProductImage/ProductImage";
import GlobalContext from "../../context/GlobalContext";
import UserContext from "../../context/UserContext";
import { createProduct } from "../../api/services/services";

/**
 * ProductAdministration page component for creating and managing products.
 *
 * @component
 * @returns {JSX.Element} The rendered product administration page.
 */
const ProductAdministration = () => {
  const navigate = useNavigate();
  const [newProduct, setNewProduct] = useState({
    title: "",
    short_description: "",
    long_description: "",
    location: "",
    point: null,
    opinion: null,
    star: null,
    latitude: 0,
    length: 0,
    subtitle: "",
    policy: "",
    rules: "",
    safety_security: "",
    address: "",
    featureList: [],
    category: {},
    city: {},
  });

  const [componentAttributes, setComponentAttributes] = useState([]);
  const [componentImages, setComponentImages] = useState([]);
  const [loading, setLoading] = useState(false);
  const { cities, categories } = useContext(GlobalContext);
  const { userInfo, logOut } = useContext(UserContext);

  const categoryList = categories.map((category) => category.title).sort();
  const cityList = cities.map((city) => city.name).sort();

  const handleValueChange = (e) => {
    setNewProduct({
      ...newProduct,
      [e.target.name]: e.target.value,
    });
  };

  const setArrayImageList = () => {
    const newImageArray = componentImages.map((image, i) => {
      return {
        title: newProduct.title ? newProduct.title : `image_${i}`,
        url: image,
      };
    });
    return newImageArray;
  };

  const setArrayFeatureList = () => {
    const newFeatureArray = componentAttributes.map((feature) => {
      return {
        id: feature.iconId,
      };
    });
    return newFeatureArray;
  };

  const completeProduct = {
    ...newProduct,
    imageList: setArrayImageList(),
    featureList: setArrayFeatureList(),
  };

  const disabled = () => {
    const objVerification = Object.values(completeProduct).some((value) => {
      if (
        (typeof value === "object" && value !== null && !Array.isArray(value) && Object.keys(value).length === 0) ||
        (Array.isArray(value) && value.length === 0) ||
        value === "" ||
        componentImages.length < 5
      ) {
        return true;
      }
      return false;
    });
    return objVerification;
  };

  const handleSubmit = async (e) => {
    setLoading(true);
    e.preventDefault();
    const productResponse = await createProduct(
      completeProduct,
      userInfo.token
    );
    if (productResponse.status === 201) {
      navigate("/confirmed", {
        state: {
          text: "Tu propiedad se ha creado con éxito.",
          buttonText: "volver",
          bgColor: "white",
        },
      });
    }
    if (productResponse.status === 403) {
      logOut();
    }
    setLoading(false);
  };

  return (
    <>
      <Fluid bgColor="dark">
        <div className="product_heading">
          <h1>Administración</h1>
          <div className="product_back">
            <FontAwesomeIcon
              icon={faChevronLeft}
              size="2xl"
              onClick={() => navigate(-1)}
              cursor="pointer"
            />
          </div>
        </div>
      </Fluid>
      <Fluid bgColor="white" color="dark">
        <h1 className="product_title title">Crear propiedad</h1>
      </Fluid>
      <Fluid bgColor="bgColor" color="dark" model="product">
        {loading ? (
          <Spinner />
        ) : (
          <form className="product_container" onSubmit={handleSubmit}>
            <ProductData
              setNewProduct={setNewProduct}
              newProduct={newProduct}
              handleValueChange={handleValueChange}
              categoryList={categoryList}
              cityList={cityList}
              categories={categories}
              cities={cities}
            />
            <ProductAttribute
              componentAttributes={componentAttributes}
              setComponentAttributes={setComponentAttributes}
            />
            <ProductPolicy
              setNewProduct={setNewProduct}
              newProduct={newProduct}
              handleValueChange={handleValueChange}
            />
            <ProductImage
              setComponentImages={setComponentImages}
              componentImages={componentImages}
            />
            <div className="product_button">
              <Button variant="button8" disabled={disabled()} type="submit">
                Crear
              </Button>
            </div>
          </form>
        )}
      </Fluid>
    </>
  );
};

export default ProductAdministration;
