import 'dart:convert';

class RegisterRequestModel {
    final String? username;
    final String? email;
    final String? password;
    final int? roleId;

    RegisterRequestModel({
        this.username,
        this.email,
        this.password,
        this.roleId = 2,
    });