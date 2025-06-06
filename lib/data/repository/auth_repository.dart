import 'dart:convert';

import 'package:canary_template/data/model/request/login_request.dart';
import 'package:canary_template/data/model/response/login_response.dart';
import 'package:canary_template/service/service_http_client.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepository {
  final ServiceHttpClient _serviceHttpClient;
  final FlutterSecureStorage = FlutterSecureStorage();

  AuthRepository(this._serviceHttpClient);

  Future<Either<String, LoginResponseModel>>login(
    LoginRequestModel requestModel,
  ) async {
    try {
      final response = await _serviceHttpClient.post(
        "login",
        requestModel.toMap(),
      );
      final JsonResponse = json.decode{response.body};
      if (response.statusCode == 200) {
        final loginRespone = LoginResponseModel.fromMap(JsonResponse);
        await secureStorage.write(
          key : "authtoken"
        )
      }
    }
  }
}