// ignore_for_file: non_constant_identifier_names, file_names, prefer_typing_uninitialized_variables

import 'package:hoteldesktopapp/screens/HotelInfo.dart';

class modelRoomInfo {
  final room_type;
  final room_price;
  final number_of_beds;
  hotelID hotelId;
  final roomImage;

  modelRoomInfo(
      {this.room_type,
      this.room_price,
      this.number_of_beds,
      required this.hotelId,
      this.roomImage});

  factory modelRoomInfo.fromJson(Map<String, dynamic> json) {
    return modelRoomInfo(
      room_type: json['room_type'],
      room_price: json['room_price'],
      number_of_beds: json['number_of_beds'],
      hotelId: json['hotelID'],
      roomImage: ['roomImage'],
    );
  }
  Map<String, dynamic> toJson() => {
        'room_type': room_type,
        'room_price': room_price,
        'number_of_beds': number_of_beds,
        'hotelID': hotelID,
        'roomImage': roomImage,
      };
}

class hotelID {
  final hotelId;
  hotelID({this.hotelId});

  factory hotelID.fromJson(Map<String, dynamic> json) {
    return hotelID(
      hotelId: json['hotelID'],
    );
  }
}
