import 'dart:core';

import 'package:fristproject/response_model.dart';

class User{
  User({
    required this.data,

});
  ResponseModel data;
  factory User.fromJson(Map<String, dynamic>json) => User(data:ResponseModel.fromJson(json["data"]),
  );
  Map<String, dynamic> toJson() => {"data":data.toJson()};
}
