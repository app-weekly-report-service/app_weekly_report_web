import 'package:darty_json_safe/darty_json.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';
import 'package:json_annotation/src/json_converter.dart';

class AppModel<T> extends WinnerBaseModel<T> {
  @override
  void customParseData(
    Map<String, dynamic> data,
    Api<JsonConverter, BaseModel> api,
  ) {
    code = JSON(data)['code'].intValue;
    message = JSON(data)['message'].stringValue;
    isSuccess = JSON(data)['isSuccess'].boolValue;
    final _data = JSON(data)['data'].rawValue;
    if (_data == null) return;
    if (_data is List) {
      list = _data.map((e) => api.converter.fromJson(e)).toList() as List<T>?;
    } else {
      this.data = api.converter.fromJson(_data) as T?;
    }
  }
}
