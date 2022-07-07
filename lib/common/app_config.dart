import 'package:app_weekly_report_web/common/app_cache_data.dart';
import 'package:app_weekly_report_web/manager/user_manager.dart';
import 'package:app_weekly_report_web/page/home/home_page.dart';
import 'package:app_weekly_report_web/page/login/login_page.dart';
import 'package:darty_json_safe/darty_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:json_annotation/json_annotation.dart';

class AppConfig extends WinnerAppConfig {
  /// App 启动入口页面
  @override
  Widget appHome(BuildContext context) {
    bool isLogin = context.select<UserManager,bool>(((value) => value.isLogin));
    return isLogin ? const HomePage() : const LoginPage();
  }

  /// 配置请求服务器地址
  @override
  WinnerEnvironmentUrl get environmentUrl {
    return WinnerEnvironmentUrl(
      debug: "http://127.0.0.1:8080",
      profile: "",
      release: "",
    );
  }

  @override
  SentryHost get sentryHost => throw UnimplementedError();

  /// 暂时不使用 Sentry 的错误统计
  @override
  bool get isEnableSentry => false;

  @override
  void showErrorToast(String message) {
    Fluttertoast.showToast(msg: message, webPosition: "center");
  }

  @override
  void showSuccessToast(String message) {
    Fluttertoast.showToast(msg: message, webPosition: "center");
  }

  @override
  List<SingleChildWidget> get providers {
    return [
      ChangeNotifierProvider.value(value: UserManager())
    ];
  }

  @override
  Map<String, dynamic> get httpHeaders {
    var map = <String,dynamic>{};
    Unwrap(UserManager().token).map((e) => map["Authorization"] = "Bearer $e");
    return map;
  }

  @override
  JsonConverter? get getNewCacheConverter => AppCacheData();
}
