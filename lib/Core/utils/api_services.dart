import 'package:dio/dio.dart';

class Api_Services {
  final Base_Url = "https://www.googleapis.com/books/v1/";
  Dio dio = Dio();

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$Base_Url$endPoint");
    return response.data;
  }
}
