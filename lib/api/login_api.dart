import 'package:app_weekly_report_web/common/app_model.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

class LoginApi extends Api<DefaultJsonConverter<String>, AppModel<String>> {
  final String username;
  final String password;

  LoginApi({required this.username, required this.password});

  @override
  DefaultJsonConverter<String> get converter => DefaultJsonConverter<String>();

  @override
  AppModel<String> get model => AppModel<String>();

  @override
  String get path => "/login";

  @override
  String get method => 'POST';

  @override
  Map<String, dynamic> get data {
    return {
        'username': username,
        'password': password,
      };
  }

}