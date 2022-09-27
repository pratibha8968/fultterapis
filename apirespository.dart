import 'package:dio/dio.dart';
import 'package:fristproject/response_model.dart';







class ApiRepository {


  ApiRepository() {
    dio = Dio();

    baseUrl = 'https://dummyjson.com/products';
  }

  static Dio? dio;

  static String? baseUrl;


  static  Future<ResponseModel> getUser({required String id}) async {
    print("===> baseUrl  ${baseUrl}");
    // Perform GET request to the endpoint "/users/<id>"
    Response? response = await dio?.get(baseUrl!);

    // Prints the raw data returned by the server
    print('User Info: ${response}');

    // Parsing the raw JSON data to the User class
    ResponseModel user = ResponseModel.fromJson(response?.data);

    return user;
  }
}


