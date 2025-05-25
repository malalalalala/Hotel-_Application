import { config } from '../../config';
const URL_BACKEND = config.apiUrl;

const fetchApi = async (url, requestName, requestInfo) => {
  try {
    const response = await fetch(url, requestInfo);
    if (response.ok) {
      const data = await response.json();
      return { status: response.status, data: data };
    } else {
      if (response.status === 401) {
        console.error(new Error(`${response.status} invalid authentication`));
        throw new Error(`${response.status} invalid authentication`);
      }
      if (response.status === 403) {
        console.error(new Error(`${response.status} Token Expired`));
        throw new Error(`${response.status} Token Expired`);
      } else {
        console.error(
          new Error(`${response.status} Something went wrong with the server`)
        );
        throw new Error(
          `${response.status} Something went wrong with the server`
        );
      }
    }
  } catch (error) {
    return { status: error.message.substring(0, 3), requestName, error };
  }
};

/********************----- CATEGORIES ----**************************/

// List all categories
export const getCategories = async () => {
  return await fetchApi(`${URL_BACKEND}/categories`, "getCategories");
};

/********************----- PRODUCTS -----********************/

// List all products
export const getProducts = async () => {
  return await fetchApi(`${URL_BACKEND}/products`, "getProducts");
};

// Get product by id
export const getProductById = async (id) => {
  return await fetchApi(`${URL_BACKEND}/products/${id}`, "getProductById");
};

// Get product by categories
export const getProductsByCategories = async () => {
  return await fetchApi(
    `${URL_BACKEND}/categories/products`,
    "getProductsByCategories"
  );
};

// Get product by category id
export const getProductsByCategoryId = async (id) => {
  return await fetchApi(
    `${URL_BACKEND}/products/category/${id}`,
    "getProductsByCategoryId"
  );
};

// Get products by city id
export const getProductsByCityName = async (city) => {
  return await fetchApi(
    `${URL_BACKEND}/products/city/${city}`,
    "getProductsByCityName"
  );
};

//post products
export const createProduct = async (productInfo, token) => {
  return await fetchApi(`${URL_BACKEND}/products`, "createProduct", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
      Authorization: "Bearer " + token,
    },
    body: JSON.stringify(productInfo),
  });
};

/********************----- CITIES -----********************/

// List all cities
export const getCities = async () => {
  return await fetchApi(`${URL_BACKEND}/cities`, "getCities");
};

/********************----- FEATURES -----********************/

// List all features
export const getFeatures = async () => {
  return await fetchApi(`${URL_BACKEND}/features`, "getFeatures");
};

/********************----- DATES -----********************/

// List available dates
export const getAvailableProductsByDate = async (startDate, endDate) => {
  return await fetchApi(
    `${URL_BACKEND}/findByDate/${startDate}/${endDate}`,
    "getAvailableProductsByDate"
  );
};

/********************----- DATES AND CITY -----********************/

// List available dates
export const getAvailableProductsByDateAndCity = async (
  startDate,
  endDate,
  cityId
) => {
  return await fetchApi(
    `${URL_BACKEND}/findByDate/${startDate}/${endDate}/${cityId}`,
    "getAvailableProductsByDateAndCity"
  );
};

/********************----- LOGIN -----**************************/

export const loginUser = async (userInfo) => {
  return await fetchApi(`${URL_BACKEND}/auth/login`, "loginUser", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify(userInfo),
  });
};

/********************----- REGISTER -----**************************/

export const registerUser = async (userInfo) => {
  return await fetchApi(`${URL_BACKEND}/users`, "registerUser", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
    body: JSON.stringify(userInfo),
  });
};

/********************----- RESERVATIONS -----**************************/

//post reservation
export const createReservations = async (reservationInfo, token) => {
  return await fetchApi(`${URL_BACKEND}/reservations`, "createReservations", {
    method: "POST",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
      Authorization: "Bearer " + token,
    },
    body: JSON.stringify(reservationInfo),
  });
};

// Get reservations by product
export const getReservationsByProductId = async (id) => {
  return await fetchApi(
    `${URL_BACKEND}/reservations/product/${id}`,
    "getReservationsByProductId"
  );
};
