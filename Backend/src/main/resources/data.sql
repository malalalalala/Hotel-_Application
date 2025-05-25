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

INSERT INTO cities (name, country, state)
  VALUES ('Cisneros', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Cocorná', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('San Luis', 'Antioquia', 'Colombia');


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
    6.2362,
   -75.1495,
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
     5.5915,
    -75.8122,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Consulta al hotel',
    1,
    2
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
     6.5552,
     75.8230,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
    3
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
     5.7925,
     -75.7953,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
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
     6.1640,
     -75.4230,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
    5
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
     6.2960,
    -75.0200,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
    6
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
      6.1870,
     -74.9930,
    'Consulta al hotel.',
    'Consulta al hotel.',
    1,
    7
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel Del Trópico',
    'Encantador hotel boutique de 4 estrellas en el cálido municipio de Sopetrán.',
    'Consulta las políticas del hotel al reservar.',
    'Carrera 12 #3-419, Vereda Llano de Montaña, Sopetrán, Antioquia, Colombia',
    92, -- Valor sugerido, puedes ajustarlo
    'Excelente', -- Valor sugerido, puedes ajustarlo
    4, -- Valor sugerido, puedes ajustarlo (es un hotel de 4 estrellas)
    'Un oasis de descanso y confort en el corazón tropical de Antioquia.',
    'El Hotel Del Trópico es un encantador hotel boutique de 4 estrellas situado en el cálido municipio de Sopetrán, a aproximadamente 40 minutos de Medellín. Rodeado de exuberante naturaleza y un clima tropical, ofrece a sus huéspedes una experiencia de descanso y confort. Entre sus instalaciones destacan una piscina al aire libre, spa y centro de bienestar, restaurante y bar. Las habitaciones están equipadas con aire acondicionado, Wi-Fi gratuito, baño privado y algunas cuentan con balcón privado. El hotel también ofrece servicios como recepción 24 horas, servicio de habitaciones y organización de tours.',
    6.50167,    -- Latitud
    -75.7433,   -- Longitud
    'Check-in a partir de las 15:00. Check-out hasta las 12:00 PM. No se permiten fiestas. No fumar en habitaciones.',
    'Protocolos de seguridad e higiene implementados. Detectores de humo en todas las áreas.',
    1,   -- id_category: Hoteles
    8    -- id_city: Sopetrán
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel del Parque',
    'Alojamiento cómodo en el corazón de La Ceja.',
    'Consulta las políticas del hotel al reservar.',
    'Parque Principal, La Ceja',
    75,           -- 'point' (número)
    'Bueno',      -- 'opinion' (cadena de texto)
    3,            -- 'star' (número entero para las estrellas)
    'Estadía céntrica en un paisaje montañoso.',
    'Situado frente al parque principal, este hotel ofrece alojamiento cómodo con servicios básicos y la conveniencia de estar a pocos pasos de restaurantes y cafés, en medio de los bellos paisajes montañosos de La Ceja.',
    6.0336,
    -75.4344,
    'Check-out: 1.50:00 No se permiten fiestas',
    'Consulta al hotel.',
    1, -- id_category: Hoteles
    9  -- id_city: La Ceja
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hotel San Roque',
    'Ubicado a tan solo una cuadra del parque principal del municipio de San Roque, Antioquia.',
    'Consulta las políticas del hotel al reservar.',
    'Una cuadra del parque principal, San Roque, Antioquia',
    88,
    'Muy bueno',
    4,
    'Experimenta la cordialidad antioqueña en un entorno colonial.',
    'Ubicado a tan solo una cuadra del parque principal del municipio de San Roque, Antioquia, el Hotel Colonial San Roque ofrece a sus visitantes una experiencia acogedora en el corazón de la "Tierra de la Cordialidad". Su estratégica ubicación permite a los huéspedes disfrutar de la arquitectura colonial y la calidez de sus habitantes, características distintivas de este encantador municipio.',
    6.485831,
    -75.019623,
    'Check-out: 12:00 PM No se permiten fiestas. No fumar.',
    'Consulta al hotel.',
    1,   -- id_category: Hoteles
    10   -- id_city: San Ronque
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Levit Glamping',
    'Ubicado en una reserva natural, ofrece alojamientos con jacuzzi y vistas a la represa .',
    'Consulta las políticas del lugar al reservar.',
    'Reserva Natural Guatapé, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.2333,
    -75.1833,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping Montecarlo Lodge',
    'Ofrece cubos de madera con jacuzzi y vistas panorámicas.',
    'Consulta las políticas del lugar al reservar.',
    'Vía Vereda La Zulia, Guatapé, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.2333,
    -75.1833,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Gulupa Ecolodge',
    'Glamping ecológico con vista a las montañas y plantación de café.',
    'Consulta las políticas del lugar al reservar.',
    'Vereda La Selva, a 4 kilómetros de la plaza principal, al lado de Café Jardín, Jardín, Colombia',
    90,
    'Excelente',
    4,
    'Conecta con la naturaleza en Jardín.',
    'Disfruta de una experiencia de glamping sostenible en medio de las montañas y cafetales de Jardín, con vistas panorámicas, privacidad y confort.',
    5.5915,
    -75.8122,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    2
  );



INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Nalua Glamping y Hotel',
    'Combinación de hotel y glamping en entorno natural, con vista a la montaña.',
    'Consulta las políticas del lugar al reservar.',
    'Kilómetro 6, Vereda El Quimbayo, 051077 San Fé, Colombia',
    90,
    'Excelente',
    4,
    'Relájate entre naturaleza y confort.',
    'Disfruta de una experiencia que combina el lujo del glamping con la comodidad hotelera en medio de un entorno natural y tranquilo.',
    6.4551,
    -75.7236,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    3
  );


INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping Jericó, El Edén',
    'Ofrece alojamiento con jacuzzi privado y vistas al jardín.',
    'Consulta las políticas del lugar al reservar.',
    'Sector Puente Sucre, Finca Santa Cruz, Jericó, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    5.7900,
    -75.7800,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    4
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Sukha Glamping',
    'Ofrece alojamientos con puntuación excepcional por parte de los huéspedes.',
    'Consulta las políticas del lugar al reservar.',
    'Aeropuerto José María Córdova-Rionegro, Rionegro, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.1645,
    -75.4231,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    5
  );


INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Cabaña Glamping Los Canarios',
    'Ofrece alojamiento con piscina natural y cocina al aire libre.',
    'Consulta las políticas del lugar al reservar.',
    'Vereda La Rápida, San Rafael, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.3000,
    -75.0333,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    6
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping El Tabor',
    'Ofrece experiencias de glamping en un entorno natural.',
    'Consulta las políticas del lugar al reservar.',
    'Vereda El Tabor, San Carlos, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.2000,
    -74.9833,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    7
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping Flor del Monte',
    'Piscinas, zonas verdes y alojamiento familiar.',
    'Consulta las políticas del lugar al reservar.',
    'Vereda Llano de Montaña, Sopetrán, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.5000,
    -75.7500,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    8
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Madeira Glamping',
    'Ubicado en entorno natural, ideal para una escapada de lujo.',
    'Consulta las políticas del lugar al reservar.',
    'Km 4 vía Don Diego, La Ceja, Colombia',
    90,
    'Excelente',
    4,
    'Escapa a la naturaleza con estilo.',
    'Experimenta el confort del glamping con paisajes naturales, privacidad y servicios exclusivos.',
    6.0333,
    -75.4333,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    9
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Glamping Paraíso',
    'Experiencia de glamping en entorno natural, antes del casco urbano de San Roque.',
    'Consulta las políticas del lugar al reservar.',
    'Vía A San Roque, 2 kilómetros antes del casco urbano, 053030 San Roque, Colombia',
    90,
    'Excelente',
    4,
    'Una escapada natural en San Roque.',
    'Disfruta de un entorno natural con privacidad, vistas a la montaña y todas las comodidades del glamping.',
    6.4855,
    -75.0170,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    10
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'El Mirador de San Joaquín',
    'Alojamiento en cabaña con jacuzzi privado y vistas al jardín.',
    'Consulta las políticas del lugar al reservar.',
    'San Joaquín, 054430 San Luis, Colombia',
    90,
    'Excelente',
    4,
    'Una escapada natural en San Luis.',
    'Disfruta de una cabaña acogedora con jacuzzi privado, rodeada de naturaleza y vistas al jardín.',
    6.0413,
    -74.9917,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    2,
    13
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
  VALUES ('Hotel Los Recuerdos', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/455745750.jpg?k=e3334d812a28233bd444b6f193fb05debb873abc75fdbedb24f13cd78e0fb5dd&o=&hp=1', 1);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://cf.bstatic.com/xdata/images/xphoto/2560x1280/72900619.jpg?k=37c05aec9f8fc9cbd06fab0f9841b0d8d871c47ec0754faac6a5bada4fc385aa&o=', 1);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/455745630.jpg?k=dab9358b0c582d3655798c95a23b63c79e364e48a8a0dac424e130aed9bcdcb8&o=&hp=1', 1);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/455746236.jpg?k=715453101f5698d5d20b686d3497832b7f14e204a6969af702398c8d9c2bd851&o=&hp=1', 1);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://static.wixstatic.com/media/b78411_113463b99779428ab4f777358a1c3b36~mv2_d_6000_4000_s_4_2.jpg/v1/fill/w_980,h_508,q_90/b78411_113463b99779428ab4f777358a1c3b36~mv2_d_6000_4000_s_4_2.jpg', 2);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://www.comfenalcoantioquia.com.co/wcm/connect/2854aefd-0ab2-4100-85e1-bec0439bafa0/Hotel+Hacienda+Baland%C3%BA+1+grande.jpg', 2);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://lh6.googleusercontent.com/BgHhmsFUOPkKr__NaN_ekQRfKcRjqahUz6HEiEnaHEY=w1467-h825-no', 2);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://lh4.googleusercontent.com/MQ0TWRir0OzLcQIGhHdjrsjRxo_GZXu5LaW5E4Fe56g=w1467-h825-no', 2);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://lh6.googleusercontent.com/gBGHmtquIV9sbG9yWgm5at2BGNKGTfrP_nZSy7CYgA8=w1467-h825-no', 2);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://www.hotelsanangel.co/wp-content/uploads/2022/04/@davidsolera-50-scaled.jpg', 3);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://www.hotelsanangel.co/wp-content/uploads/2022/04/@davidsolera-48-scaled.jpg', 3);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://www.hotelsanangel.co/wp-content/uploads/2022/04/@davidsolera-11-scaled.jpg', 3);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://cdn0.matrimonio.com.co/vendor/3841/3_2/960/jpeg/hotelsanangelsantafe-269819527-462441975278373-2338605730929762579-n_10_163841-164336783634723.jpeg', 3);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/366325010.jpg?k=f0db2ab6b164e041e8af950f7608da13a52c281018907456b7206f405749d704&o=&hp=1', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://lh3.googleusercontent.com/proxy/XYAj9JILMfbuz5YnTOVMdrHPzt4wxrm84AF3gVINshLTS3wKc14_6W0P2dS6xG7AiQAe9x1VE_jBOyQUhmLdUoFnJ12DEc1w2QeYw0xcwkMMWV5Lsn1telo9_oszKPO2OGO4QIifzynjffpSdabyo8kkYG9WbA=s680-w680-h510-rw', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/516382587.jpg?k=fdbfdb732460510a58d69f057200b14188d8f5246add47fd396d20a92b8833d1&o=&hp=1', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/516382474.jpg?k=458be6259c1c15e709773dc32234677d4feacc97129dc1128ffb584d1d9c55bd&o=&hp=1', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/516384030.jpg?k=bfa35ceabd09eae073c1d8c07fbae6cbb9b755918ff846967b5f56df0a6ab83c&o=&hp=1', 4);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://images.getaroom-cdn.com/image/upload/s--H1rGTZQw--/c_limit,e_improve,fl_lossy.immutable_cache,h_940,q_auto:good,w_940/v1709411614/1add14322a559871cf25c8c6357ec5bf25bd9ba9?atc=e7cd1cfa', 5);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://images.getaroom-cdn.com/image/upload/s--sXeLDQwJ--/c_limit,e_improve,fl_lossy.immutable_cache,h_940,q_auto:good,w_940/v1682770664/935855b8b6e6973dc1795cb628cf67e3c3a6a540?atc=e7cd1cfa', 5);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://images.getaroom-cdn.com/image/upload/s--Pb0ZdGLk--/c_limit,e_improve,fl_lossy.immutable_cache,h_940,q_auto:good,w_940/v1665869709/940447773bd3a2f5b8bc4a0484803768a64fb373?atc=e7cd1cfa', 5);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://lh3.googleusercontent.com/p/AF1QipOvPcPUtbovG8QD8nSlihgvKSfXrO24Jmxyj-4=s680-w680-h510-rw', 5);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1131.jpeg', 6);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1139.jpeg', 6);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1141.jpeg', 6);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1140.jpeg', 6);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://cincohorizontes.com/wp-content/uploads/2024/11/IMG_1127.jpeg', 6);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/607035601.jpg?k=4f8eea4d7654930f3148f019a748d873eea5eb3656de1f81f9880334bb7d24a1&o=&hp=1', 7);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/607580473.jpg?k=6d16773d976fe7d921e82c83b5f7c14b96bb17e85069c8ed3690d1585430591a&o=&hp=1', 7);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/607035594.jpg?k=01961806b5cd27a390c06a0c590fe0e2a9f588924243964b31be5975df84ceec&o=&hp=1', 7);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/607958715.jpg?k=b1992c96196771cd1369de8b7b7e5fc42c9c4c36b0928c149a777640b398b0ae&o=&hp=1', 7);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Del Trópico', 'https://deltropicohotel.com/wp-content/uploads/2024/02/IMG_5976.jpg', 8);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Del Trópico', 'https://deltropicohotel.com/wp-content/uploads/2024/02/416361410_18405048442058539_8334299185065194660_n.jpg', 8);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/165934344.jpg?k=f3442bc75bbeef318c27f0f9e6f321ddbfdab803daeeacc73f99020e1af15225&o=&hp=1', 9);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486552362.jpg?k=bde2d52267b22cab29994ac7c568af54962e333bb6eb4a5a8ad152ce9d0971a1&o=&hp=1', 9);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/486552226.jpg?k=7f2473b93175c5c1f7a56b799fe248ccf7ea78f12b98f7c485775ad23818db78&o=', 9);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/69032396.jpg?k=16548fc662b9e633e6bcf57f5833385b29a5abbdb78580b0a4e4e498d6cb6cbb&o=&hp=1', 9);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Roque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/569886133.jpg?k=e9f8841859a12fa0383cc7b80c39b9ff079644d0e872804b401bdbdc1fc4b6c2&o=&hp=1', 10);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Roque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/622923258.jpg?k=9de942a2676ed44d481e9066378c42f88b9ad46e56338460dbbd56fbbe53ac7e&o=&hp=1', 10);
INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Roque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/569885907.jpg?k=4164b6b2af910396ce8fc920f696963dc9dcad0024c2650cc7282cdbcde992ee&o=&hp=1', 10);
INSERT INTO images (title, url, id_product)
   VALUES ('Hotel San Roque', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/569885711.jpg?k=6e1936329f8e7c25ebf3602c13297ad6f099b3233c5f5cda16f3cc735ce93515&o=&hp=1', 10);

INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Exterior Vista Lago 1', 'https://www.levitglamping.com/wp-content/uploads/2021/03/Super-Eclipse-8.jpg', 11);
INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Exterior Vista Lago 2', 'https://www.levitglamping.com/wp-content/uploads/2021/03/Super-Eclipse-11.jpg', 11);
INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Exterior General', 'https://www.levitglamping.com/wp-content/uploads/2023/04/Glamping-guatape-Super-Eclipse-5.jpg', 11);
INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Jacuzzi', 'https://www.levitglamping.com/wp-content/uploads/2021/03/Super-Eclipse-12.jpg', 11);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Cubo Exterior 1', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/495123868.jpg?k=65c0197fae5db8c73f7427c088b4179a96535c905b6e3bf0b4abca4d6d1c9449&o=&hp=1', 12);
INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Cubo Exterior 2', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/495123886.jpg?k=2a96980c7c9c09224dbdf5d388374c0c0e3e7696c224589fd53dfd6dc8c14e0f&o=&hp=1', 12);
INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Vista Panorámica', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/287320054.jpg?k=8c87384c88a8bbc1282421e1e616a69aa1a678b7db338bba78959a3047b57bba&o=&hp=1', 12);
INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Interior', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/442190347.jpg?k=fc724729516d97982db5eb790aa07b61e6da60d0475b76896496c4102ba36147&o=&hp=1', 12);
INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Jacuzzi', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/304704943.jpg?k=a64af6bd2a14cd727637a181d9d7131286aeb72421f1e18e15dc45dbf266839a&o=&hp=1', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Vista Exterior', 'https://content.r9cdn.net/rimg/himg/d2/f6/8c/booking-8009390-639150634-631214.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=16', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Habitación Principal', 'https://content.r9cdn.net/rimg/himg/c6/cf/c3/booking-8009390-640535898-755742.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=16', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Terraza Vista Montaña', 'https://content.r9cdn.net/rimg/himg/38/7c/c5/booking-8009390-639186706-695629.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=16', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Interior Cabaña', 'https://content.r9cdn.net/rimg/himg/8c/35/0b/booking-8009390-639186718-717507.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=16', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Zona de Descanso', 'https://content.r9cdn.net/rimg/himg/44/68/90/booking-8009390-639186712-711165.jpg?crop=true&width=836&height=607&watermarkheight=16&watermarkpadding=', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Exterior 1', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/421457677.jpg?k=f0c5a91e5884976a783ed169927b123ba1b5032e98c55255f742f2f34131d6f6&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Terraza Noche', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/512002756.jpg?k=0a03a73e42b05fe6dacbab6f8d48bd8deec5427893a5143987152c19b3773179&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Zona Verde', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/335528297.jpg?k=703639b217841c0b3ea66aab0730aa503a61ad15b7ee4aa020c034133ebac1a6&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Interior Habitación', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/335527842.jpg?k=ee8664104714b44c2344c8583e2e0c12bfd38d61e659ee64ee603d00ef226f32&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Vista Noche', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/335527810.jpg?k=a395dd356b023e20c7d0fb98ff8a16915cbd1e78c172ae3bb998dc69d54e585f&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Fachada Día', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/335451305.jpg?k=36cb4cf874373610e7e0262a3a971788ef8067daec20e0748c25e8f5efd12498&o=&hp=1', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Fachada Día', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/350554568.jpg?k=b9132ffc7fb378911db517542b0a996e4b9c66d00e91baa5328cbad9495dfa87&o=&hp=1', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Fachada Alternativa', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/350554568.jpg?k=b9132ffc7fb378911db517542b0a996e4b9c66d00e91baa5328cbad9495dfa87&o=&hp=1', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Jacuzzi Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/350533250.jpg?k=7dcf4f605e524c324decfaab04eaf754bbcaaba6d94112b3e8ab87cf1f0fc9cd&o=&hp=1', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Habitación Vista Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/350533256.jpg?k=c7d9ec43b585ee05cbecc6410f7ae50aa9db1348c0a1e42b471c875f83ed2f9a&o=&hp=1', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Vista Exterior', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/480380581.jpg?k=b426aa090bb222c2d3576a34f6375001fc1fcd364e15033d23924e9ee86e0b52&o=&hp=1', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Habitación Panorámica', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/501078994.jpg?k=cd9d2bc80662ba74f31b5e14450687649ce3f01ff298c2c3a26b4cdf5336b8f6&o=&hp=1', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Interior Noche', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/484446187.jpg?k=8a8f343d59c82f3f99aaabcdc277b142c36e036b3f06ababf2e643fe4f0764b3&o=&hp=1', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Alojamiento Vista Bosque', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/492793809.jpg?k=19c5f6cdb41144b885991355754f5c5ea32a3807bc913d6b3cbeb2dd37b086de&o=&hp=1', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Área Común Exterior', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/480380610.jpg?k=2a0cbff9d3a7d3932c382fd6d40848040e1eaf836b563183bf2ef3f6075af235&o=&hp=1', 16);


INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Piscina Natural', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/352113290.jpg?k=90ea5ea7776e1947fb2104cc5f0e103f0ec78ba7c7dca50550a2af8220ccb9e0&o=', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/352113272.jpg?k=262cd5417fe88ab63ba8feb013bcbbc91b2705e14aae36c958f9d57d0560d066&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Terraza', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/352113293.jpg?k=cda694eb43c186a6e95f91e309df2985a5d9b873ae3269da5447fb08b41c3af8&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Área Común', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/352132943.jpg?k=ba6cf1e1541c4a72e198b6654b889767e50cd664e41d149ad8ce17be283ea2c0&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Cabaña Vista', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/524581888.jpg?k=849ed1b40bef8caafdfcc84a02f9ed527c064b717902bc69e4c73427aead9daa&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Cocina al Aire Libre', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/352113284.jpg?k=1ba9fe23f2d31bc006f38bc2a7dc857e1f37a92e955c2d1b113c28aa85ee25f4&o=&hp=1', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Vista Exterior', 'https://1.bp.blogspot.com/-ZTVhu7CawkQ/YZLl0rHU6XI/AAAAAAAAIi4/h8w-78j-aBktsdEopdAO7dV7vUxpuw6ZgCLcBGAsYHQ/s1440/242553153_114339490989452_4452964244461065830_n.jpg', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Mirador', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/27/fb/a7/5c/caption.jpg?w=900&h=500&s=1', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Cabaña Principal', 'https://www.hotelessancarlos.org.co/wp-content/uploads/2023/09/IMG-20230116-WA0060.jpg', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Paisaje Natural', 'https://th.bing.com/th/id/OIP.rvXVOY59wmMR7JFaVndj5gHaE8?rs=1&pid=ImgDetMain', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Vista Nocturna', 'https://www.hotelessancarlos.org.co/wp-content/uploads/2023/09/IMG-20221025-WA0037.jpg', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Piscina Principal', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/544889263.jpg?k=08a8d1ff61b5602d628d0e057301514db32a0a34721a566790b5c94a0a610623&o=&hp=1', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Zona Verde', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/544889277.jpg?k=9d6f9ed0b255f5e63afdd77fbf824e7d4d456c26febd7a8ff8772051a9d7a215&o=&hp=1', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/544889235.jpg?k=aa923576c0fd182aa5da7e3af1c9181b14f5ec2d6ca6b92f5a965e6776bf9b59&o=&hp=1', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Vista General', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/544889271.jpg?k=e15fa05f2de1b988dc0c22567ee0b421b474cccdb5a8f10505bc8732d94f6a75&o=&hp=1', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Vista General', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/457216177.jpg?k=9ae8bf04077993531772f6d3837fe59f1333eef8e70c17dfb439a74e3c9a7628&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Exterior con Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/408570326.jpg?k=3384f9a7e7b9c44b172dc4b1a79aafeb9e1a63a4d03f97e5a76a7a830ff86d9b&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Noche', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/407477718.jpg?k=b7dcd65674710437063e318c5d18af8cf7ee1d98b2ce29b6232c0910e90b2cea&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Interiores', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/408561711.jpg?k=12691cc89fecb6cc37e83a4a5e3ec9d6e85d01185993752bcc1e84c8ae218c13&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Sala con Vista', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/408561676.jpg?k=270ccd17992d6af13ae95dcc44f7b5dc7bb6cdc042f93522553d2ec3c8c59d8f&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1280x900/428535443.jpg?k=23955c93217f296807f76832be611258285bc547b6cbfc56429037721e8518b9&o=&hp=1', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Vista Principal', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/380182670.jpg?k=20bccdbee947c9762ac06654912de2cca410b96ca4233518a99dc071523f42a4&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Vista Piscina', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/643080105.jpg?k=4ffc732e50b086e9350efd6c19f27d041d40f3874e504015f3475016140ee800&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Interior Habitación', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/380182663.jpg?k=dcfbbabee4d7506e9bba96e17034c9829e9759cb940464d71984bb439ce3978a&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Piscina Nocturna', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/643080106.jpg?k=07d200674ca8a710302bdd8a6ed9483c6c5a7ddc9d06485637f5ea797bd5b838&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Vista Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/643080114.jpg?k=d2e2c0b4d09c48cb0a774e08076fe5408644b17da57ac87133114cc93fade445&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Entrada', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/380182657.jpg?k=444e0d42b0b2f95b6de05dd16a6a8258e706d4ae9a5b77e0fd99b4188b334534&o=&hp=1', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Vista Jardín', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/526471868.jpg?k=1870fb2c0b3db587f3763f2e06aaeb1d570ef0585ca5a303d5ec72456af00eb7&o=', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Exterior', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/526471741.jpg?k=7fc9c2537790ec4ab0c0c552e13fcf64f8724f854d509b4e2577e69a07a224b7&o=&hp=1', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Cabaña Jacuzzi', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/597593440.jpg?k=7aa5398b0bfb8f6c292bd1132dcfb79c7a7999b96b2d0ecac76e733e5b06ca44&o=&hp=1', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Interior', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/530631970.jpg?k=4f80862ce4bc0fd7f8647af70007d42c15e794791f6f761fe267bd802ffebe14&o=&hp=1', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Balcón', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/526742778.jpg?k=3e1d9cbf7679315ffb7ab404fed3974b9772b2bc6ee498b575599fde3ce48639&o=&hp=1', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Habitación', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/526471852.jpg?k=abbe73c5eb9302460341c9f5740d32c1f15180fb70670d8b38410450a244555c&o=&hp=1', 22);





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