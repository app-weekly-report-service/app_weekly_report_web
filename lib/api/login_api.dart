import 'package:flutter_winner_app/flutter_winner_app.dart';

class LoginApi extends Api<DefaultJsonConverter<String>, AppModel<String>> {

  @override
  DefaultJsonConverter<String> get converter => DefaultJsonConverter<String>();

  @override
  AppModel<String> get model => AppModel<String>();

  @override
  String get path => "/login";

  @override
  String get method => 'POST';

}