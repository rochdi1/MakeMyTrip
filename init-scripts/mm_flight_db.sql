CREATE TABLE flights (
    id VARCHAR(50) PRIMARY KEY,
    flight_number VARCHAR(20) NOT NULL,
    airline_name VARCHAR(100) NOT NULL,
    departure_airport VARCHAR(10) NOT NULL,
    arrival_airport VARCHAR(10) NOT NULL,
    departure_time TIMESTAMP NOT NULL,
    arrival_time TIMESTAMP NOT NULL,
    base_price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE flight_bookings (
    id VARCHAR(50) PRIMARY KEY,
    user_id VARCHAR(50) NOT NULL,
    flight_id VARCHAR(50) NOT NULL,
    booking_date TIMESTAMP NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    pnr_number VARCHAR(10) UNIQUE NOT NULL,
    CONSTRAINT fk_flight FOREIGN KEY (flight_id) REFERENCES flights(id)
);

CREATE TABLE flight_passengers (
    id BIGSERIAL PRIMARY KEY,
    booking_id VARCHAR(50) NOT NULL,
    passenger_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    seat_number VARCHAR(5) NOT NULL,
    CONSTRAINT fk_booking FOREIGN KEY (booking_id) REFERENCES flight_bookings(id)
);
