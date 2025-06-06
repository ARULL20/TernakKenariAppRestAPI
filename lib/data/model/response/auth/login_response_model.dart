import 'dart:convert';

class LoginResponseModel {
    final String? message;
    final int? statusCode;
    final Data? data;

    LoginResponseModel({
        this.message,
        this.statusCode,
        this.data,
    });