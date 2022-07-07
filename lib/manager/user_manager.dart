import 'package:app_weekly_report_web/common/app_cache_data.dart';
import 'package:app_weekly_report_web/model/get_user_info_response.dart';
import 'package:darty_json_safe/darty_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

class UserManager extends ChangeNotifier {
  UserManager._();
  static final UserManager _instance = UserManager._();
  factory UserManager() => _instance;

  String? _token;
  String? get token => _token;

  bool get isLogin => _token != null;

  GetUserInfoResponse? _userInfo;
  GetUserInfoResponse? get userInfo => _userInfo;
  set userInfo(GetUserInfoResponse? value) {
    _userInfo = value;
    notifyListeners();
  }

  Future<void> init() async {
    final token = JSON(AppCacheManager().getCacheData<AppCacheData>()?.token).stringValue;
    if (token.isEmpty) return;
    await login(token);
  }

  Future<void> login(String token) async {
    _token = token;
    await Unwrap(AppCacheManager().getCacheData<AppCacheData>()).map((e) async {
      e.token = token;
      await AppCacheManager().saveCacheData(e);
    }).value;
    notifyListeners();
  }
}