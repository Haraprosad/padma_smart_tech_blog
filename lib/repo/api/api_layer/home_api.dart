import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../api/web_service.dart';

@lazySingleton
class HomeApi {
  late Dio _dio;

  HomeApi(WebService service) {
    _dio = service.createWebService();
  }

  //to get home data
  Future<Response> requestForHomeData() async {
    _dio.options.headers["X-Requested-With"] = "XMLHttpRequest";
    _dio.options.headers["APIKEY"] = "ZopR65Dcb#h8%_hJhQ058OpcyekX5p";
    _dio.options.headers["Content-Type"] = "application/json";
    var response = await _dio.get("/posts");
    return response;
  }

  //to create blog
  Future<Response> createBlogPost(String title,String description) async {
    _dio.options.headers["X-Requested-With"] = "XMLHttpRequest";
    _dio.options.headers["APIKEY"] = "ZopR65Dcb#h8%_hJhQ058OpcyekX5p";
    _dio.options.headers["Content-Type"] = "application/json";
    FormData formData = new FormData.fromMap({
      "title": title,
      "description": description,
    });
    var response = await _dio.post("/posts",data: formData);
    return response;
  }

  //to update blog
  Future<Response> updateBlogData(String title,String description) async {
    _dio.options.headers["X-Requested-With"] = "XMLHttpRequest";
    _dio.options.headers["APIKEY"] = "ZopR65Dcb#h8%_hJhQ058OpcyekX5p";
    _dio.options.headers["Content-Type"] = "application/json";
    FormData formData = new FormData.fromMap({
      "title": title,
      "description": description,
    });
    var response = await _dio.put("/posts/2",data: formData);
    return response;
  }
  //to delete blog
  Future<Response> deleteBlogData() async {
    _dio.options.headers["X-Requested-With"] = "XMLHttpRequest";
    _dio.options.headers["APIKEY"] = "ZopR65Dcb#h8%_hJhQ058OpcyekX5p";
    _dio.options.headers["Content-Type"] = "application/json";
    var response = await _dio.delete("/posts/2");
    return response;
  }

  //to get blog details
  Future<Response> requestForBlogDetails(String blogNo) async {
    _dio.options.headers["X-Requested-With"] = "XMLHttpRequest";
    _dio.options.headers["APIKEY"] = "ZopR65Dcb#h8%_hJhQ058OpcyekX5p";
    _dio.options.headers["Content-Type"] = "application/json";
    var response = await _dio.get("/posts/${blogNo}");
    return response;
  }

  //to create comment
  Future<Response> createCommentRequest(String comment) async {
    _dio.options.headers["X-Requested-With"] = "XMLHttpRequest";
    _dio.options.headers["APIKEY"] = "ZopR65Dcb#h8%_hJhQ058OpcyekX5p";
    _dio.options.headers["Content-Type"] = "application/json";
    FormData formData = new FormData.fromMap({
      "message": comment,
    });
    var response = await _dio.post("/posts/2/comments",data: formData);
    return response;
  }
}
