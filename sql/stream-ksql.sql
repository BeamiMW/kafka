CREATE STREAM petshop_stream (
  pet_id VARCHAR,
  pet_name VARCHAR,
  species VARCHAR,
  breed VARCHAR,
  age INT,
  price DOUBLE,
  weight DOUBLE,
  checkup_date VARCHAR
) 
WITH (
  KAFKA_TOPIC = 'test-topic',  
  VALUE_FORMAT = 'PROTOBUF'     
);
