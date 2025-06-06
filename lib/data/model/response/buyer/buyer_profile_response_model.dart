import 'dart:convert';

class BuyerProfileResponseModel {
  String message;
  int statusCode;
  Data data;

  BuyerProfileResponseModel({
    required this.message,
    required this.statusCode,
    required this.data,
  });
