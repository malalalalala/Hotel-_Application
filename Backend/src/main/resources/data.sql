INSERT INTO categories (title, description, image_url)
  VALUES ('Hoteles',  'Confortables con todos los servicios y comodidades ', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/455745951.jpg?k=d45ca051f70646f85e7b59163f71a6d9657d5b2c6a6c75dd081a88f49eb91010&o=');

INSERT INTO categories (title, description, image_url)
  VALUES ('Glamping', 'Campamentos de lujo que te permiten disfrutar de la naturaleza con estilo y confort.', 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/457216177.jpg?k=9ae8bf04077993531772f6d3837fe59f1333eef8e70c17dfb439a74e3c9a7628&o=&hp=1');

INSERT INTO categories (title, description, image_url)
  VALUES ('Airbnb', 'Alojamientos únicos ofrecidos por anfitriones locales', 'https://a0.muscache.com/im/pictures/miso/Hosting-1063889573195406074/original/79b858a9-b10f-409b-b7c8-bc44e9389364.jpeg?im_w=1200');

INSERT INTO categories (title, description, image_url)
  VALUES ('Hosterias', 'Ven y relajate en la mejor estadía', 'https://cincohorizontes.com/wp-content/uploads/2021/06/image_6487327-3.jpg');

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

INSERT INTO cities (name, country, state)
  VALUES ('Puerto Triunfo', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Barbosa', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Fredonia', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('El Carmen de Viboral', 'Antioquia', 'Colombia');

INSERT INTO cities (name, country, state)
  VALUES ('Marinilla', 'Antioquia', 'Colombia');




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
     -75.8230,
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

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería El Trébol',
    'Alojamiento campestre con vistas al lago y actividades al aire libre en Guatapé.',
    'Consulta las políticas del establecimiento al reservar.',
    'Vereda La Piedra, 700 metros vía principal, 053847 Guatapé, Colombia',
    96,
    'Excepcional',
    4,
    'Naturaleza y confort junto al embalse.',
    'Disfruta de cabañas privadas con vistas al lago, desayuno americano, actividades como pesca, ciclismo y parque acuático, todo en un entorno natural y tranquilo.',
    6.22626,
    -75.18648,
    'Check-out: 1:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    1
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería El Paraíso Jardín',
    'Alojamiento tradicional con encanto en el corazón de Jardín, Antioquia.',
    'Consulta las políticas del establecimiento al reservar.',
    'Calle 16, Jardín, Antioquia, 056050, Colombia',
    92,
    'Muy bueno',
    4,
    'Relájate en un entorno pintoresco y tranquilo.',
    'Ofrece habitaciones confortables, zonas comunes para el descanso, cercanía al centro histórico y un ambiente acogedor con excelente atención al cliente.',
    5.5955,
    -75.8172,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    2
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería Tonusco Campestre',
    'Alojamiento campestre con piscina, naturaleza y tranquilidad en Santa Fe de Antioquia.',
    'Consulta las políticas del establecimiento al reservar.',
    'Calle 7 con Carrera 7, Barrio Barranca - El Gualí, Santa Fe de Antioquia, 570050, Colombia',
    94,
    'Excelente',
    4,
    'Descanso natural en una zona histórica.',
    'Ofrece amplias instalaciones rodeadas de naturaleza, piscina al aire libre, restaurante, zonas verdes y cómodas habitaciones para una estadía relajante.',
    6.5560,
    -75.8260,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería Puerta del Nus',
    'Alojamiento acogedor en el corazón de Cisneros, ideal para el descanso.',
    'Consulta las políticas del establecimiento al reservar.',
    'Calle 19A, Barrio El Uno, 053050 Cisneros, Colombia',
    88,
    'Muy bueno',
    3,
    'Comodidad en el corredor del Nus.',
    'Ofrece habitaciones cómodas, restaurante, parqueadero y zonas comunes tranquilas para viajeros y familias.',
    6.5376,
    -75.0908,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    11
  );
INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Hostería La Medusa',
    'Rodeada de naturaleza, ideal para desconectarse y disfrutar de la tranquilidad de Cocorná.',
    'Consulta las políticas del establecimiento al reservar.',
    'Cl 21 #28-42, Quebrada Guayabal, Cocorná, Antioquia, Colombia',
    86,
    'Muy bueno',
    4,
    'Naturaleza y confort en un solo lugar.',
    'Ubicada en medio de la vegetación, ofrece habitaciones cómodas, piscina natural, restaurante típico y acceso a la quebrada Guayabal.',
    6.0076,
    -75.1725,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    12
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Finca Hotel Ríos Claros',
    'Alojamiento campestre con acceso a zonas verdes y cercanía a los ríos de San Luis.',
    'Consulta las políticas del establecimiento al reservar.',
    'Autopista Medellín-Bogotá km 130, 054430 San Luis, Colombia',
    89,
    'Excelente',
    4,
    'Tranquilidad natural a orillas del río.',
    'Rodeada de naturaleza, esta finca hotel ofrece espacios amplios, zona de camping, restaurante y acceso a ríos cercanos, ideal para el ecoturismo.',
    5.8996,
    -74.9657,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    13
  );
INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Cabaña Villa Jardín - Aldea Doradal - Santorini Colombiano',
    'Encantadora cabaña estilo mediterráneo en Doradal, ideal para relajarse en familia.',
    'Consulta las políticas del lugar al reservar.',
    'Aldea Doradal, Cabaña #82, 053448 Doradal, Puerto Triunfo, Colombia',
    90,
    'Excelente',
    4,
    'Descanso al estilo Santorini en Antioquia.',
    'Ubicada en la Aldea Doradal, esta cabaña combina arquitectura blanca y azul estilo Santorini con zonas verdes, terrazas amplias y cercanía al Río Claro.',
    5.8966,
    -74.7255,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al establecimiento.',
    4,
    14
  );


INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Alojamiento entero: casa en Barbosa',
    'Hermosa casa entre las montañas a 42 km de Medellín.',
    'Consulta las políticas del anfitrión al reservar.',
    'Barbosa, Antioquia, Colombia',
    88,
    'Muy bueno',
    4,
    'Descanso entre montañas a pocos minutos de Medellín.',
    'Ubicada en un entorno montañoso y tranquilo, esta casa ofrece comodidad, vistas panorámicas y acceso rápido desde Medellín. Ideal para familias o parejas. Ten en cuenta que hay un peaje en la ruta.',
    6.4372,
    -75.3339,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al anfitrión.',
    3,
    15
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Finca Naya - Fredonia',
    'Alojamiento entero entre cafetales con vista al Río Cauca.',
    'Consulta las políticas del anfitrión al reservar.',
    'Fredonia, Antioquia, Colombia',
    93,
    'Excelente',
    5,
    'Naturaleza, altura y café.',
    'En las alturas sobre el Río Cauca, en medio de los verdes cafetales, se encuentra Finca Naya. Un alojamiento ideal para descansar, disfrutar del paisaje cafetero y conectarse con la naturaleza antioqueña.',
    5.9167,
    -75.6667,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'El alojamiento cuenta con protocolos de seguridad e información turística local.',
    3,
    16
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Casa Colonial en Santa Fe de Antioquia',
    'Alojamiento entero en el corazón del centro histórico.',
    'Consulta las políticas del anfitrión al reservar.',
    'Centro Histórico, Santa Fe de Antioquia, Colombia',
    95,
    'Excelente',
    5,
    'Disfruta del encanto colonial.',
    'Casa colonial completamente equipada ideal para familias o grupos. A pasos de la plaza principal, rodeada de arquitectura patrimonial, historia y clima cálido. Piscina privada y cocina tradicional.',
    6.5552,
    -75.8230,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'El alojamiento cuenta con extintores, información turística y recomendaciones locales.',
    3,
    3
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Condominio moderno en El Carmen',
    'A solo 1 minuto del parque principal de El Carmen de Viboral.',
    'Consulta las políticas del anfitrión al reservar.',
    'Centro, El Carmen de Viboral, Antioquia, Colombia',
    93,
    'Excelente',
    5,
    'Confort y ubicación privilegiada.',
    'Alojamiento tipo condominio completamente equipado. Ideal para parejas o viajeros que deseen explorar el arte cerámico y la cultura local. Cercano a restaurantes y zonas turísticas.',
    6.0821,
    -75.3351,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Cuenta con seguridad privada, acceso digital y recomendaciones de actividades locales.',
    3,
    17
  );

INSERT INTO products (title, short_description, policy, location, point, opinion, star, subtitle, long_description, latitude, length, rules, safety_security, id_category, id_city)
  VALUES (
    'Casa Finca en Marinilla',
    'Hermosa y acogedora casa finca a 15 minutos de Marinilla.',
    'Consulta las políticas del anfitrión al reservar.',
    'Zona rural, a 15 minutos del centro de Marinilla, Antioquia, Colombia',
    91,
    'Excelente',
    5,
    'Tranquilidad y naturaleza en el oriente antioqueño.',
    'Esta casa finca ofrece un entorno campestre ideal para descansar, con amplias zonas verdes, espacios familiares y vistas a la naturaleza. Perfecta para una escapada rural cerca de la ciudad.',
    6.1710,
    -75.3319,
    'Check-out: 12:00 PM. No se permiten fiestas. No fumar.',
    'Consulta al anfitrión.',
    3,
    18
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
  VALUES ('Televisor', 'faTv');

INSERT INTO features (name, icon)
  VALUES ('Apto mascotas', 'faPaw');

INSERT INTO features (name, icon)
  VALUES ('Lavadero', 'faTshirt');

INSERT INTO features (name, icon)
  VALUES ('Piscina', 'faPersonSwimming');

INSERT INTO features (name, icon)
  VALUES ('Estacionamiento gratuito', 'faCar');

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos ', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20los%20Recuerdos1.jpg?raw=true', 1);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20los%20Recuerdos%202.jpg?raw=true', 1);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20los%20Recuerdos%203.jpg?raw=true', 1);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20los%20Recuerdos%204.jpg?raw=true', 1);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Los Recuerdos', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20los%20Recuerdos%205.jpg?raw=true', 1);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20%20Baland%C3%BA%201.jpg?raw=true', 2);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Baland%C3%BA%202.jpg?raw=true', 2);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Baland%C3%BA%204.jpg?raw=true', 2);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Baland%C3%BA%204.jpg?raw=true', 2);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Hacienda Balandú', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Baland%C3%BA%205.jpg?raw=true', 2);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Angel%201.jpg?raw=true', 3);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Angel%202.jpg?raw=true', 3);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Angel%203.jpg?raw=true', 3);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Ángel', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Angel%204.jpg?raw=true', 3);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Cauca%20Viejo%201.jpg?raw=true', 4);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Cauca%20Viejo%202.jpg?raw=true', 4);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Cauca%20Viejo%203.jpg?raw=true', 4);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Cauca%20Viejo%204.jpg?raw=true', 4);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Cauca Viejo Fundadores', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Cauca%20Viejo%205.jpg?raw=true', 4);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20las%20Lomas%201.jpg?raw=true', 5);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20las%20Lomas%202.jpg?raw=true', 5);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Las Lomas', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20las%20Lomas%203.jpg?raw=true', 5);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Rafael%201.jpeg?raw=true', 6);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Roque%202.jpg?raw=true', 6);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Rafael%203.jpeg?raw=true', 6);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Rafael', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Rafael%204.jpeg?raw=true', 6);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20el%20Mirador%201.jpg?raw=true', 7);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20el%20Mirador%202.jpg?raw=true', 7);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20el%20Mirador%203.jpg?raw=true', 7);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel El Mirador', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20el%20Mirador%204.jpg?raw=true', 7);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Del Trópico', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20del%20Tropico%201.jpeg?raw=true', 8);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Del Trópico', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20del%20Tropico%202.jpg?raw=true', 8);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Del Trópico', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20del%20Tropico%203.jpeg?raw=true', 8);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel Del Trópico', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20del%20Tropico%204.jpeg?raw=true', 8);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20del%20Parque%201.jpg?raw=true', 9);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20del%20Parque%202.jpg?raw=true', 9);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel del Parque', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20del%20Parque%203.jpg?raw=true', 9);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Roque', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Roque%201.jpg?raw=true', 10);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Roque', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Roque%202.jpg?raw=true', 10);

INSERT INTO images (title, url, id_product)
  VALUES ('Hotel San Roque', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Roque%203.jpg?raw=true', 10);

INSERT INTO images (title, url, id_product)
   VALUES ('Hotel San Roque', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20San%20Roque%204.jpg?raw=true', 10);

INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Exterior Vista Lago 1', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Levit%20Glamping%20%201.jpg?raw=true', 11);

INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Exterior Vista Lago 2', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Levit%20Glamping%202.jpg?raw=true', 11);

INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Exterior General', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Levit%20Glamping%203.jpg?raw=true', 11);

INSERT INTO images (title, url, id_product)
  VALUES ('Levit Glamping Jacuzzi', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Levit%20Glamping%205.jpg?raw=true', 11);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Cubo Exterior 1', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Montecarlo%201.jpg?raw=true', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Cubo Exterior 2', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Montecarlo%202.jpg?raw=true', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Vista Panorámica', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Montecarlo%203.jpg?raw=true', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Montecarlo Lodge Interior', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Montecarlo%204.jpg?raw=true', 12);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Vista Exterior', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Gulupa%20Jardin%201.jpg?raw=true', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Habitación Principal', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Gulupa%20Jardin%202.jpg?raw=true', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Terraza Vista Montaña', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Gulupa%20Jardin%203.jpg?raw=true', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Interior Cabaña', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Gulupa%20Jardin%204.jpg?raw=true', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Gulupa Ecolodge Zona de Descanso', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Gulupa%20Jardin%205.jpg?raw=true', 13);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Exterior 1', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Nalua%201.jpg?raw=true', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Terraza Noche', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Nalua%202.jpg?raw=true', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Zona Verde', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Nalua%203.jpg?raw=true', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Interior Habitación', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Nalua%204.jpg?raw=true', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Nalua Glamping Vista Noche', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Nalua%205.jpg?raw=true', 14);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Fachada Día', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20El%20Eden%201.jpg?raw=true', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Fachada Alternativa', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20El%20Eden%202.jpg?raw=true', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Jacuzzi Jardín', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20El%20Eden%203.jpg?raw=true', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Jericó Habitación Vista Jardín', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20El%20Eden%204.jpg?raw=true', 15);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Vista Exterior', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Sukha%20Glamping%201.jpg?raw=true', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Habitación Panorámica', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Sukha%20Glamping%202.jpg?raw=true', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Interior Noche', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Sukha%20Glamping%203.jpg?raw=true', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Sukha Glamping Alojamiento Vista Bosque', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Sukha%20Glamping%204.jpg?raw=true', 16);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Piscina Natural', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Los%20Canarios%201.jpg?raw=true', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Entrada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Los%20Canarios%202.jpg?raw=true', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Terraza', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Los%20Canarios%203.jpg?raw=true', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Área Común', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Los%20Canarios%204.jpg?raw=true', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('Los Canarios Cabaña Vista', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Los%20Canarios%205.jpg?raw=true', 17);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Vista Exterior', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Imagenes2/Glamping%20Tabor%201.0.jpg?raw=true', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Mirador', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Imagenes2/Glamping%20Tabor%201.jpg?raw=true', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('El Tabor Cabaña Principal', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Imagenes2/Glamping%20Tabor%202.jpg?raw=true', 18);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Piscina Principal', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Flor%20del%20Monte%201.jpg?raw=true', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Zona Verde', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Flor%20del%20Monte%202.jpg?raw=true', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Flor del Monte Entrada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Flor%20del%20Monte%203.jpg?raw=true', 19);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Vista General', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Madeira%20Glamping%201.jpg?raw=true', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Exterior con Jardín', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Madeira%20Glamping%202.jpg?raw=true', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Noche', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Madeira%20Glamping%203.jpg?raw=true', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Interiores', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Madeira%20Glamping%204.jpg?raw=true', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Madeira Glamping Sala con Vista', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Madeira%20Glamping%205.jpg?raw=true', 20);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Vista Principal', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Paraiso%201.jpg?raw=true', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Vista Piscina', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Paraiso%202.jpg?raw=true', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Interior Habitación', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Paraiso%203.jpg?raw=true', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Piscina Nocturna', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Paraiso%205.jpg?raw=true', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('Glamping Paraíso Vista Jardín', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20Paraiso%205.jpg?raw=true', 21);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Vista Jardín', 'hhttps://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20el%20Mirador%20San%20Luis%202.jpg?raw=true', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Exterior', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20el%20Mirador%20San%20Luis%201.jpg?raw=true', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Cabaña Jacuzzi', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20el%20Mirador%20San%20Luis%203.jpg?raw=true', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Interior', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20el%20Mirador%20San%20Luis%204.jpg?raw=true', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Mirador de San Joaquín Balcón', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Glamping%20el%20Mirador%20San%20Luis%205.jpg?raw=true', 22);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Fachada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20el%20Trebol%201.jpg?raw=true', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Entrada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20el%20Trebol%202.jpg?raw=true', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Habitación', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20el%20Trebol%203.jpg?raw=true', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Vista general', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20el%20Trebol%204.jpg?raw=true', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('El Trébol Jardín', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20el%20Trebol%205.jpg?raw=true', 23);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería El Paraíso Fachada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20el%20Paraiso%201.jpg?raw=true', 24);
h
INSERT INTO images (title, url, id_product)
  VALUES ('Hostería El Paraíso Restaurante', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20el%20Paraiso%202.jpg?raw=true', 24);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería El Paraíso Comida', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20el%20Paraiso%203.jpg?raw=true', 24);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Tonusco Campestre Vista General', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20Tonusco%201.jpg?raw=true', 25);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Tonusco Campestre Piscina', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20Tonusco%202.jpg?raw=true', 25);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Tonusco Campestre Habitación', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20Tonusco%203.jpg?raw=true', 25);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Puerta del Nus Fachada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20Puerta%20del%20Nus%202.webp?raw=true', 26);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Puerta del Nus Entrada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20Puerta%20del%20Nus%203.jpg?raw=true', 26);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Puerta del Nus Piscina', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20Puerta%20del%20Nus%205.jpg?raw=true', 26);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería Puerta del Nus Zonas Verdes', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20Puerta%20del%20Nus.jpg?raw=true', 26);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería La Medusa Fachada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20La%20Medusa%201.jpg?raw=true', 27);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería La Medusa Piscina', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20La%20Medusa%202.jpg?raw=true', 27);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería La Medusa Zonas Verdes', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20La%20Medusa%203.jpg?raw=true', 27);

INSERT INTO images (title, url, id_product)
  VALUES ('Hostería La Medusa Entrada Principal', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hosteria%20La%20Medusa%204.jpg?raw=true', 27);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Exterior', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Imagenes2/Hotel%20Rios%20Claros%201.jpg?raw=true', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Entrada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Imagenes2/Hotel%20Rios%20Claros%202.jpg?raw=true', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Jardines', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Imagenes2/Hotel%20Rios%20Claros%203.jpg?raw=true', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Habitación', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Imagenes2/Hotel%20Rios%20Claros%204.jpg?raw=true', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Hotel Rios Claros Piscina', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Imagenes2/Hotel%20Rios%20Claros%205.jpg?raw=true', 28);

INSERT INTO images (title, url, id_product)
  VALUES ('Villa Jardín Fachada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Santorini%20Colombiano%201.jpg?raw=true', 29);

INSERT INTO images (title, url, id_product)
  VALUES ('Villa Jardín Entrada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Santorini%20Colombiano%202.jpg?raw=true', 29);

INSERT INTO images (title, url, id_product)
  VALUES ('Villa Jardín Vista Interna', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Santorini%20Colombiano%203.jpg?raw=true', 29);

INSERT INTO images (title, url, id_product)
  VALUES ('Villa Jardín Piscina Nocturna', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Santorini%20Colombiano%204.jpg?raw=true', 29);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa en las Montañas Sala', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Barbosa%201.avif?raw=true', 30);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa en las Montañas Comedor', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Barbosa%202.avif?raw=true', 30);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa en las Montañas Dormitorio', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Barbosa%203.avif?raw=true', 30);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Fachada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Fredonia%201.avif?raw=true', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Vista Panorámica', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Fredonia%202.avif?raw=true', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Sala', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Fredonia%203.avif?raw=true', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Comedor', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Fredonia%204.avif?raw=true', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Finca Naya Jardín', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Fredonia%205.avif?raw=true', 31);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Colonial Santa Fe Fachada', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Santa%20Fe%201.webp?raw=true', 32);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Colonial Santa Fe Piscina', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Santa%20Fe%202.avif?raw=true', 32);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Colonial Santa Fe Cocina', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Airbnb%20Santa%20Fe%203.avif?raw=true', 32);

INSERT INTO images (title, url, id_product)
  VALUES ('Condominio El Carmen Sala Principal', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20el%20condo%201.avif?raw=true', 33);

INSERT INTO images (title, url, id_product)
  VALUES ('Condominio El Carmen Cocina Comedor', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20el%20condo%202.avif?raw=true', 33);

INSERT INTO images (title, url, id_product)
  VALUES ('Condominio El Carmen Habitación Principal', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20el%20condo%203.avif?raw=true', 33);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Finca Marinilla Fachada Principal', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Marinilla%202.avif?raw=true', 34);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Finca Marinilla Jardín con Vista', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Marinilla%204.avif?raw=true', 34);

INSERT INTO images (title, url, id_product)
  VALUES ('Casa Finca Marinilla Sala Rústica', 'https://github.com/AndresT3086/assetsHotel/blob/main/imagenes/Hotel%20Marinilla%205.avif?raw=true', 34);


-- ============================
--  POBLAR TABLA PRODUCTS_HAS_FEATURES
-- ============================


-- Hotel Los Recuerdos (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 1); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 1); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 1); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 1); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 1); -- Estacionamiento gratuito
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 1); -- Lavadero

-- Hotel Hacienda Balandú (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 2); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 2); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 2); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 2); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 2); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 2); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 2); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 2); -- Estacionamiento gratuito

-- Hotel San Ángel (3 estrellas) - 4 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 3); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 3); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 3); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 3); -- Estacionamiento gratuito

-- Hotel Cauca Viejo Fundadores (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 4); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 4); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 4); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 4); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 4); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 4); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 4); -- Estacionamiento gratuito

-- Hotel Las Lomas (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 5); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 5); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 5); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 5); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 5); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 5); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 5); -- Estacionamiento gratuito

-- Hotel San Rafael (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 6); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 6); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 6); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 6); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 6); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 6); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 6); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 6); -- Estacionamiento gratuito

-- Hotel El Mirador (2 estrellas) - 3 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 7); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 7); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 7); -- Estacionamiento gratuito

-- Hotel Del Trópico (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 8); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 8); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 8); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 8); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 8); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 8); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 8); -- Estacionamiento gratuito

-- Hotel del Parque (3 estrellas) - 4 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 9); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 9); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 9); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 9); -- Estacionamiento gratuito

-- Hotel San Roque (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 10); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 10); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 10); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 10); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 10); -- Estacionamiento gratuito
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 10); -- Cocina

-- Levit Glamping (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 11); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 11); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 11); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 11); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 11); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 11); -- Estacionamiento gratuito

-- Glamping Montecarlo Lodge (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 12); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 12); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 12); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 12); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 12); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 12); -- Estacionamiento gratuito

-- Gulupa Ecolodge (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 13); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 13); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 13); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 13); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 13); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 13); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 13); -- Estacionamiento gratuito

-- Nalua Glamping y Hotel (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 14); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 14); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 14); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 14); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 14); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 14); -- Estacionamiento gratuito

-- Glamping Jericó, El Edén (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 15); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 15); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 15); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 15); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 15); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 15); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 15); -- Estacionamiento gratuito

-- Sukha Glamping (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 16); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 16); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 16); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 16); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 16); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 16); -- Estacionamiento gratuito

-- Cabaña Glamping Los Canarios (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 17); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 17); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 17); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 17); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 17); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 17); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 17); -- Estacionamiento gratuito

-- Glamping El Tabor (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 18); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 18); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 18); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 18); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 18); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 18); -- Estacionamiento gratuito

-- Glamping Flor del Monte (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 19); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 19); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 19); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 19); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 19); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 19); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 19); -- Estacionamiento gratuito

-- Madeira Glamping (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 20); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 20); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 20); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 20); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 20); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 20); -- Estacionamiento gratuito

-- Glamping Paraíso (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 21); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 21); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 21); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 21); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 21); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 21); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 21); -- Estacionamiento gratuito

-- El Mirador de San Joaquín (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 22); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 22); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 22); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 22); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 22); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 22); -- Estacionamiento gratuito

-- Hostería El Trébol (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 23); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 23); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 23); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 23); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 23); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 23); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 23); -- Estacionamiento gratuito

-- Hostería El Paraíso Jardín (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 24); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 24); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 24); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 24); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 24); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 24); -- Estacionamiento gratuito

-- Hostería Tonusco Campestre (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 25); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 25); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 25); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 25); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 25); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 25); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 25); -- Estacionamiento gratuito

-- Hostería Puerta del Nus (3 estrellas) - 5 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 26); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 26); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 26); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 26); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 26); -- Estacionamiento gratuito

-- Hostería La Medusa (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 27); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 27); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 27); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 27); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 27); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 27); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 27); -- Estacionamiento gratuito

-- Finca Hotel Ríos Claros (4 estrellas) - 7 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 28); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 28); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 28); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 28); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 28); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 28); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 28); -- Estacionamiento gratuito

-- Cabaña Villa Jardín (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 29); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 29); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 29); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 29); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 29); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 29); -- Estacionamiento gratuito

-- Alojamiento entero: casa en Barbosa (4 estrellas) - 6 features
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 30); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 30); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 30); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 30); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 30); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 30); -- Estacionamiento gratuito

-- Finca Naya - Fredonia (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 31); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 31); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 31); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 31); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 31); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 31); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 31); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 31); -- Estacionamiento gratuito

-- Casa Colonial en Santa Fe de Antioquia (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 32); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 32); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 32); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 32); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 32); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 32); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 32); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 32); -- Estacionamiento gratuito

-- Condominio moderno en El Carmen (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 33); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 33); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 33); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 33); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 33); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 33); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 33); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 33); -- Estacionamiento gratuito

-- Casa Finca en Marinilla (5 estrellas) - 8 features (todas)
INSERT INTO products_has_features (feature_id, product_id) VALUES (1, 34); -- Wifi
INSERT INTO products_has_features (feature_id, product_id) VALUES (2, 34); -- Aire acondicionado
INSERT INTO products_has_features (feature_id, product_id) VALUES (3, 34); -- Cocina
INSERT INTO products_has_features (feature_id, product_id) VALUES (4, 34); -- Televisor
INSERT INTO products_has_features (feature_id, product_id) VALUES (5, 34); -- Apto mascotas
INSERT INTO products_has_features (feature_id, product_id) VALUES (6, 34); -- Lavadero
INSERT INTO products_has_features (feature_id, product_id) VALUES (7, 34); -- Piscina
INSERT INTO products_has_features (feature_id, product_id) VALUES (8, 34); -- Estacionamiento gratuito

INSERT INTO roles (name)
  VALUES ('Admin');

INSERT INTO roles (name)
  VALUES ('User');

INSERT INTO users (name, last_name, email, password,role_id)
  VALUES ('Bruno', 'Rodriguez', 'brodriguez@gmail.com', '$2a$12$zGAXSVRkhPwAzVuLhV2sJOQnyNFQxNBVobFlEUFdyer6qZMhpJ/EW',2);

INSERT INTO users (name, last_name, email, password, role_id)
  VALUES ('Laura', 'Ramos', 'lalo@gmail.com', '$2a$12$PAox1AJUWXrPnM.62kICguJk.ppd110tgTAU2lhvX/MD6fx78jQ0e', 1);


  --1234567


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

