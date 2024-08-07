
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:weather_app/backend_utils/exception/api_exception.dart';

import 'base_api_services.dart';

class NetworkServicesApi implements BaseApiServices{

  dynamic res;

  @override
  Future<dynamic> getApi(String url) async {

    try{
      final response = await http.get(Uri.parse(url));
      res = returnResponse(response);

      if(response.statusCode == 200){}
    }on SocketException {
      throw noInternetException('');
    }on TimeoutException{
      throw timeOutException();
    }
    return res;
  }

  @override
  Future postApi(String url, data) {
    // TODO: implement postApi
    throw UnimplementedError();
  }

  @override
  Future patchApi(String url) {
    // TODO: implement patchApi
    throw UnimplementedError();
  }

  @override
  Future deleteApi(String url) {
    // TODO: implement deleteApi
    throw UnimplementedError();
  }

  dynamic returnResponse(http.Response response) {
    switch(response.statusCode) {
      case 200:
        dynamic  res = jsonDecode(response.body);
        return res;
      case 201:
        dynamic  res = jsonDecode(response.body);
        return res;
      case 203:
        dynamic  res = jsonDecode(response.body);
        return res;
      case 403:
        dynamic  res = jsonDecode(response.body);
        return res;
      }
  }
}


