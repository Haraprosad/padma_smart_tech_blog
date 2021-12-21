import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:padma_smart_tech_blog/repo/api/api_layer/home_api.dart';
import 'package:padma_smart_tech_blog/repo/api/models/home_model.dart';


@lazySingleton
class HomePageLayer {
  HomeApi _homeApi;

  HomePageLayer(this._homeApi);

  //Request for home data
  Future<HomeModel> requestForHomeData() async {
    //http request
    var response = await _homeApi.requestForHomeData();

     //return compute(parseApiResponse, response.data.toString());
   return HomeModel.fromJson(response.data);
  }

  //Request for creating blog post
  Future<HomeModel> createBlogPost(String title, String description) async {
    //http request
    var response = await _homeApi.createBlogPost(title, description);

    //return compute(parseApiResponse, response.data.toString());
    return HomeModel(data: response.data);
  }
  //Request for getting blog details
  Future<HomeModel> requestForBlogDetails(String blogNo) async {
    //http request
    var response = await _homeApi.requestForBlogDetails(blogNo);

    //return compute(parseApiResponse, response.data.toString());
    return HomeModel.fromJson(response.data);
  }
  //Update blog
  Future<HomeModel> requestForUpdatingBlog(String title,String description) async {
    //http request
    var response = await _homeApi.updateBlogData(title, description);

    //return compute(parseApiResponse, response.data.toString());
    return HomeModel.fromJson(response.data);
  }

  //Request for deleting blog post
  Future<HomeModel> requestForDeletingBlog() async {
    //http request
    var response = await _homeApi.deleteBlogData();

    //return compute(parseApiResponse, response.data.toString());
    return HomeModel.fromJson(response.data);
  }
  //Request for creating comment
  Future<HomeModel> requestForCreatingComment(String comment) async {
    //http request
    var response = await _homeApi.createCommentRequest(comment);

    //return compute(parseApiResponse, response.data.toString());
    return HomeModel.fromJson(response.data);
  }
}
