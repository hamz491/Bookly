import 'package:dio/dio.dart';

class Api_Services {
  final _Base_Url = "https://www.googleapis.com/books/v1/";
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$_Base_Url$endPoint");
    return response.data;
  }
}
