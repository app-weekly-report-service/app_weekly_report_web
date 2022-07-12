import 'package:darty_json_safe/darty_json.dart';
import 'package:json_annotation/json_annotation.dart';

class AppCacheData extends JsonConverter<AppCacheData, Map<String,dynamic>> {

  @JsonKey(defaultValue: "")
  late String token;

  @override
  AppCacheData fromJson(Map<String, dynamic> json) {
    return AppCacheData()..token = JSON(json)['token'].stringValue;
  }

  @override
  Map<String, dynamic> toJson(AppCacheData object) {
    return {
      'token': object.token,
    };
  }

}