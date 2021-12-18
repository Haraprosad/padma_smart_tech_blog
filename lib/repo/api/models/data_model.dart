import 'created_user_model.dart';

class Data {
  Data({
    required this.id,
    required this.title,
    required this.description,
    required this.createdUser,
  });
  late final String id;
  late final String title;
  late final String description;
  late final CreatedUser createdUser;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'].toString();
    title = json['title'];
    description = json['description'];
    createdUser = CreatedUser.fromJson(json['created_user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['description'] = description;
    _data['created_user'] = createdUser.toJson();
    return _data;
  }
}