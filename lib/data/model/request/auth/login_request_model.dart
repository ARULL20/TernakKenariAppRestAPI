import 'dart:convert';

class LoginRequestModel {
    final String? email;
    final String? password;

    LoginRequestModel({
        this.email,
        this.password,
    });