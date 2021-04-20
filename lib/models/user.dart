part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Filo Chan - Ara ara',
    address: 'Street number weebs',
    city: 'Kyoto',
    houseNumber: '1234',
    phoneNumber: '0812345689',
    email: 'filo@tatenoyushaa.com',
    picturePath:
        "https://i.pinimg.com/originals/e6/c6/d0/e6c6d04ce6f5ef18fc4c55ce92aa160d.jpg");
