import 'package:dio/dio.dart';

class Api_Services {
  final _Base_Url = "https://www.googleapis.com/books/v1/";
  final Dio dio;
  Api_Services({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$_Base_Url$endPoint");
    return response.data;
  }
}
