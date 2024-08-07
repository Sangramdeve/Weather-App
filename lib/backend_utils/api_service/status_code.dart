import 'dart:convert';

import 'package:http/http.dart' as http;

dynamic returnResponse(http.Response response){

  switch(response.statusCode) {
    case 200:
      dynamic  res = jsonDecode(response.body);
      return res;
  }
}