import 'dart:convert';
import 'dart:io';
import 'package:mvvm_architecture/data/app_exceptions.dart';
import 'package:mvvm_architecture/data/network/BaseApiService.dart';
import 'package:http/http.dart' as http;
class NetworkApiService extends BaseApiService{

  @override
  Future<dynamic> getGetApiResponse(String url) async {
    dynamic responseJson;

    try{

      final response = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);

    }on SocketException{

      throw FetchDataException('No Internet Connection');

    }

    return responseJson;
  }

  @override
  Future<dynamic> getPostApiResponse(String url, dynamic data) async{
    dynamic responseJson;

    try{

      http.Response response = await http.post(
        Uri.parse(url),
        body: data,
      ).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);

    }on SocketException{

      throw FetchDataException('No Internet Connection');

    }

    return responseJson;
  }

  dynamic returnResponse (http.Response response){

    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw BadRequestException(response.body.toString());

      case 404:
        throw UnauthorisedException(response.body.toString());

      default:
        throw FetchDataException('Error Occured while Communicating with Server' +response.statusCode.toString());
    }

  }
  
}