-- Schema for places table
CREATE TABLE places (
    id SERIAL PRIMARY KEY,
    city VARCHAR(100),
    county VARCHAR(100),
    country VARCHAR(100)
);

-- Schema for people table
CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    date_of_birth DATE,
    city_of_birth VARCHAR(100),
    place_id INT,
    FOREIGN KEY (place_id) REFERENCES places(id)
);

