DROP TABLE IF EXISTS property_tracker;

CREATE TABLE property_tracker(
  address VARCHAR(255),
  value INT,
  number_of_bedrooms INT,
  year_built INT,
  id SERIAL PRIMARY KEY
);
