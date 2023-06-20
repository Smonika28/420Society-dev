
import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:four20society/utils/local_storage/local_storage.dart';

mixin ApiHelper{
  final Dio _dio = Dio();
   Future<dynamic> postTypeHelper(dynamic body, String url,
      {bool isHeaderNeed = false,
      bool isParamNeed = false,
      Map<String,dynamic>? queryParameters,
      int param = 0}) async {
    LocalStorageService localStorageService = LocalStorageService();
    String token = await localStorageService.getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY)??"";
    String uId = await localStorageService.getFromDisk(LocalStorageService.USER_ID)??"";
    if (kDebugMode) {
      print(url.toString());
      print(queryParameters);
      print("token pandey ${token}");
      print(uId);
    }
    try {
      Response response =  await _dio.post(url,
      data: jsonEncode(body),
              options: Options(headers: {
              if(uId.isNotEmpty)
              "uid":uId,
              if(token.isNotEmpty)
              "token":token}));
      if (kDebugMode) {
        print(response.data.toString());
      }
      return {
        "statusCode": response.statusCode,
        "body": response.data,
        "errorMsg": null
      };
    } on DioError catch (e) {
      if (kDebugMode) {
        log(e.toString());
      }
     if (DioErrorType.badResponse == e.type) {
        if (kDebugMode) {
          log(e.response!.data.toString());
        }
        if (e.response!.statusCode == 300) {
          if (kDebugMode) {
            print("300 error- ${e.response?.data["message"]}");
          }
          return {
            "statusCode": 300,
            "body": e.response!.data,
            "errorMsg": e.response!.statusMessage.toString()
          };
        } else if (e.response!.statusCode == 403) {
          return {
            "statusCode": 403,
            "body": e.response!.data,
            "errorMsg": e.response!.statusMessage.toString()
          };
        } else if (e.response!.statusCode == 404) {
          return {
            "statusCode": 404,
            "body": e.response!.data,
            "errorMsg": e.response!.statusMessage.toString()
          };
        } else if (e.response!.statusCode == 400) {
          if (kDebugMode) {
            print("400 error- ${e.response!.statusCode}");
          }
          return {
            "statusCode": 400,
            "body": e.response!.data,
            "errorMsg": e.response!.statusMessage.toString()
          };
        } else if (e.response!.statusCode == 500) {
          return {
            "statusCode": 500,
            "body": e.response!.data,
            "errorMsg": e.response!.statusMessage.toString()
          };
        } else {
          return {
            "statusCode": 49004,
            "body": null,
            "errorMsg": "Something went wrong"
          };
        }
      } else if (DioErrorType.unknown == e.type) {
        if (e.message!.contains('SocketException')) {
          return {
            "statusCode": 49004,
            "body": null,
            "errorMsg": "Failed to connect"
          };
        }
      } else {
        return {
          "statusCode": 49004,
          "body": null,
          "errorMsg": "Problem connecting to the server. Please try again."
        };
      }
    }
  }
}