CREATE TABLE trains (
    id VARCHAR(50) PRIMARY KEY,
    train_number VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    source_station VARCHAR(50) NOT NULL,
    destination_station VARCHAR(50) NOT NULL
);

CREATE TABLE train_bookings (
    id VARCHAR(50) PRIMARY KEY,
    user_id VARCHAR(50) NOT NULL,
    train_id VARCHAR(50) NOT NULL,
    pnr VARCHAR(12) UNIQUE NOT NULL,
    travel_date DATE NOT NULL,
    class_type VARCHAR(10) NOT NULL,
    total_fare DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT fk_booking_train FOREIGN KEY (train_id) REFERENCES trains(id)
);

CREATE TABLE train_passengers (
    id BIGSERIAL PRIMARY KEY,
    booking_id VARCHAR(50) NOT NULL,
    passenger_name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL,
    berth_preference VARCHAR(10),
    allocated_berth VARCHAR(10),
    CONSTRAINT fk_booking_passenger FOREIGN KEY (booking_id) REFERENCES train_bookings(id)
);
