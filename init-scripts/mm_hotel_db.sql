CREATE TABLE hotels (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    city VARCHAR(100) NOT NULL,
    address TEXT NOT NULL,
    star_rating INT NOT NULL
);

CREATE TABLE room_inventories (
    id VARCHAR(50) PRIMARY KEY,
    hotel_id VARCHAR(50) NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    price_per_night DECIMAL(10, 2) NOT NULL,
    total_rooms INT NOT NULL,
    available_rooms INT NOT NULL,
    CONSTRAINT fk_hotel FOREIGN KEY (hotel_id) REFERENCES hotels(id)
);

CREATE TABLE hotel_bookings (
    id VARCHAR(50) PRIMARY KEY,
    user_id VARCHAR(50) NOT NULL,
    hotel_id VARCHAR(50) NOT NULL,
    room_type VARCHAR(50) NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_booking_hotel FOREIGN KEY (hotel_id) REFERENCES hotels(id)
);
