-- ============================
--       POBLAR TABLA CATEGORIES
-- ============================
INSERT INTO categories (title, description, image_url)
  VALUES ('Hoteles',  'Confortables con todos los servicios y comodidades ', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/455745951.jpg?k=d45ca051f70646f85e7b59163f71a6d9657d5b2c6a6c75dd081a88f49eb91010&o=');

INSERT INTO categories (title, description, image_url)
  VALUES ('Glamping', 'Campamentos de lujo que te permiten disfrutar de la naturaleza con estilo y confort.', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/457216177.jpg?k=9ae8bf04077993531772f6d3837fe59f1333eef8e70c17dfb439a74e3c9a7628&o=&hp=1');

INSERT INTO categories (title, description, image_url)
  VALUES ('Airbnb', 'Alojamientos únicos ofrecidos por anfitriones locales', 'https://a0.muscache.com/im/pictures/miso/Hosting-1063889573195406074/original/79b858a9-b10f-409b-b7c8-bc44e9389364.jpeg?im_w=1200');

INSERT INTO categories (title, description, image_url)
  VALUES ('Hosterias', 'Ven y relajate en la mejor estadía', 'https://cincohorizontes.com/wp-content/uploads/2021/06/image_6487327-3.jpg');


-- ============================
--       POBLAR TABLA CITIES
-- ============================
INSERT INTO cities (name, country, state)
  VALUES ('Guatape', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Jardín', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Santa Fe de Antioquia', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Jericó', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Rionegro', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('San Rafael', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('San Carlos', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Sopetrán', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('La Ceja', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('San Ronque', 'Antioquia', 'Colombia');


-- ============================
--       POBLAR TABLA PRODUCTS
-- ============================
INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Los Recuerdos',
    'Vistas panorámicas al embalse Peñol-Guatapé.',
    'Consulta las políticas del hotel al reservar.',
    'A orillas del embalse Peñol-Guatapé',
    85,
    'Muy bueno',
    4,
        'Disfruta de la tranquilidad junto al embalse.',
        'Ofrece vistas panorámicas al embalse, piscina, restaurante y habitaciones confortables.',
    -34.589716,
    -58.385892,
    'Check-out: 1.50:00 No se permiten fiestas No fumar',
    'Consulta al hotel.',
    1,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Hacienda Balandú',
    'Amplias zonas verdes, piscina y spa en Jardín.',
    'Consulta las políticas del hotel al reservar.',
    'Kilómetro 1 vía Río sucio, Jardín, Antioquia',
    99,
    'Excelente',
    5,
    'Relájate en la naturaleza de Jardín.',
    'Cuenta con amplias zonas verdes, piscina, spa y restaurante.',
    -31.424469,
    -64.187478,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Consulta al hotel',
    1,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel San Ángel',
    'Estilo colonial con piscina y jacuzzi en Santa Fe de Antioquia.',
    'Consulta las políticas del hotel al reservar.',
    'calle 9 #1-110, Barrio Santa Lucia, Santa Fé de Antioquia, Antioquia',
    74,
    'Bueno',
    3,
    'Sumérgete en la historia de Santa Fe.',
    'Estilo colonial, piscina para adultos, jacuzzi, solárium y restaurante.',
    -34.589716,
    -58.385892,
    'Consulta al hotel.',
    'Consulta al hotel.',
    3,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Cauca Viejo Fundadores',
    'Arquitectura tradicional cerca de Jericó.',
    'Consulta las políticas del hotel al reservar.',
    'En el corregimiento de Cauca Viejo, cerca de Jericó',
    93,
    'Muy bueno',
    4,
    'Ideal para eventos y escapadas románticas.',
    'rquitectura tradicional, ideal para eventos y escapadas románticas.',
    -34.589716,
    -58.385892,
    'Consulta al hotel.',
    'Consulta al hotel.',
    3,
    4
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Las Lomas',
    'Hotel de lujo cerca del Aeropuerto José María Córdova.',
    'Consulta las políticas del hotel al reservar.',
    'Glorieta Aeropuerto José María Córdova, Rionegro, Antioquia',
    85,
    'Muy bueno',
    4,
    'Disfruta de servicios de alta calidad cerca del aeropuerto.',
    'Hotel de lujo con spa, piscina, gimnasio y restaurante gourmet.',
    -34.589716,
    -58.385892,
    'Consulta al hotel.',
    'Consulta al hotel.',
    2,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel San Rafael',
    'Ofrece actividades al aire libre, piscina natural y cabañas.',
    'Consulta las políticas del hotel al reservar.',
    'Calle 20 #19-61 san rafael, 053830 San Rafael, Colombia',
    97,
    'Excelente',
    5,
    'Destino ecológico por excelencia.',
    'Ofrece actividades al aire libre, piscina natural y alojamiento en cabañas.',
    -34.589716,
    -58.385892,
    'Consulta al hotel.',
    'Consulta al hotel.',
    2,
    2
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel El Mirador',
    'Alojamiento tradicional con fácil acceso a la naturaleza.',
    'Consulta las políticas del hotel al reservar.',
    'Centro del municipio, San Carlos, Antioquia',
    65,
    'Bueno',
    2,
    'El paraíso turístico de Antioquia.',
    'Alojamiento tradicional con fácil acceso a las principales atracciones naturales.',
    -34.589716,
    -58.385892,
    'Consulta al hotel.',
    'Consulta al hotel.',
    4,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Departamento AndaLucia',
    'Espléndido departamento en el centro de la ciudad',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'A 500 mts del centro de la ciudad',
    99,
    'Excelente',
    5,
    'Alójate a pocos minutos de las sierras',
    'Está situado a solo unas calles de la avenida San Martín y del paseo Guemes. El Departamento AndaLucia ofrece una experiencia única con un diseño elegante y todas las comodidades modernas. Además, cuenta con WiFi gratuita y un variado desayuno de 07:00 a 10:30.',
    -31.424469,
    -64.187478,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    1,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostel Nomadas',
    'Hermoso hostel para quienes viajan solos o acompañados',
    'Agregá las fechas de tu viaje para obtener los detalles de cancelación de esta estadía.',
    'En pleno centro porteño',
    74,
    'Bueno',
    3,
    'Alójate en el corazón de Buenos Aires',
    'Está situado a solo unas calles de la avenida Alvear, de la avenida Quintana, del parque San Martín y del distrito de Recoleta. El Hostel Nomadas ofrece un ambiente acogedor y facilidades compartidas para viajeros. Además, cuenta con WiFi gratuita y un desayuno variado de 07:00 a 10:30.',
    -34.589716,
    -58.385892,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Se aplican las pautas de distanciamiento social y otras normas relacionadas con el coronavirus Detector de humo',
    3,
    1
  );


-- ============================
--       POBLAR TABLA FEATURES
-- ============================
INSERT INTO features (name, icon)
  VALUES ('Wifi', 'faWifi');

INSERT INTO features (name, icon)
  VALUES ('Aire acondicionado', 'faSnowflake');

INSERT INTO features (name, icon)
  VALUES ('Cocina', 'faKitchenSet');

INSERT INTO features (name, icon)
  VALUES ('Televisor', 'faTV');

INSERT INTO features (name, icon)
  VALUES ('Apto mascotas', 'faPaw');

INSERT INTO features (name, icon)
  VALUES ('Pileta', 'faPersonSwimming');

INSERT INTO features (name, icon)
  VALUES ('Estacionamiento gratuito', 'faCar');


-- ============================
--       POBLAR TABLA IMAGES
-- ============================
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos ', 'https://cf.bstatic.com/xdata/images/xphoto/2560x1280/72900619.jpg?k=37c05aec9f8fc9cbd06fab0f9841b0d8d871c47ec0754faac6a5bada4fc385aa&o=
', 1);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Gran Plaza', 'https://0521ptc6n2-g01-products-images.s3.us-east-2.amazonaws.com/galery_images/galery+(1).jpg', 1);

-- Agrega aquí el resto de los INSERT para la tabla images, siguiendo el mismo formato.


-- ============================
--  POBLAR TABLA PRODUCTS_HAS_FEATURES
-- ============================
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 1);
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 1);


-- ============================
--       POBLAR TABLA ROLES
-- ============================
INSERT INTO roles (name)
  VALUES ('Admin');

INSERT INTO roles (name)
  VALUES ('User');


-- ============================
--       POBLAR TABLA USERS
-- ============================
INSERT INTO users (name, last_name, email, password,role_id)
  VALUES ('Bruno', 'Rodriguez', 'brodriguez@gmail.com', '$2a$12$zGAXSVRkhPwAzVuLhV2sJOQnyNFQxNBVobFlEUFdyer6qZMhpJ/EW',2);
  --abc1234

-- Inserta un usuario con rol User (role_id = 2) y password de 7 caracteres
INSERT INTO users (name, last_name, email, password, role_id)
  VALUES ('Laura', 'Ramos', 'lalo@gmail.com', '$2a$12$PAox1AJUWXrPnM.62kICguJk.ppd110tgTAU2lhvX/MD6fx78jQ0e', 1);
  --1234567


-- ============================
--       POBLAR TABLA RESERVATIONS
-- ============================
INSERT INTO reservations (check_in, check_out, product_id, user_id)
  VALUES ('2022-11-20', '2022-11-30', 1, 1);


-- ============================
--       SELECT * FROM CATEGORIES;
--         SELECT * FROM CITIES;
--         SELECT * FROM FEATURES;
--         SELECT * FROM IMAGES;
--         SELECT * FROM PRODUCTS_HAS_FEATURES;
--         SELECT * FROM RESERVATIONS;
 --        SELECT * FROM ROLES;
 --        SELECT * FROM USERS;

-- ============================