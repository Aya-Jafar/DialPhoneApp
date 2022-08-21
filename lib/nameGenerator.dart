import 'package:faker/faker.dart';

String generateRandomName() {
  Faker faker = Faker();
  return faker.person.name();
}
