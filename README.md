This project demonstrates a Kafka-based producer-consumer system using JSON format for data transmission. The producer generates fake pet shop event data using Faker, and the consumer receives and processes this data, performing inter-field aggregations on the event data.

### Key Features:
- Producer: Generates fake PetShopEvent data in JSON format and sends it to a Kafka topic.
- Consumer: Receives JSON messages from the Kafka topic and performs aggregations on numerical fields (price, weight, age).

### Inter-field Aggregations:
- total_price: Sums all the prices of the received events.
- total_weight: Sums all the weights of the received events.
- average_weight: Calculates the average weight based on the number of events received (total_weight / event_count).

### How to Run:
```bash
make docker-build
# Run proto
protoc --python_out=. ./protobuf/schema.proto
make kafka
make jupyter
