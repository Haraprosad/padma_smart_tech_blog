import 'dart:convert';

class ApiResponseList {
  ApiResponseList(
    this.data, {
    this.status = "",
    this.message,
    this.statusCode = 0,
    this.pageCount = 0,
  });

  late List<dynamic> data;
  late String status;
  late dynamic message;
  late int statusCode;
  late int pageCount;

  factory ApiResponseList.fromJson(Map<String, dynamic> json) =>
      ApiResponseList(
        json["data"],
        status: json["status"],
        message: json["message"],
        statusCode: json["statusCode"],
        pageCount: json.containsKey("pageCount") ? json['pageCount'] : 0,
      );

  Map<String, dynamic> toJson() => {
        "data": data,
        "status": status,
        "message": message,
        "statusCode": statusCode,
        "pageCount": pageCount,
      };
}
