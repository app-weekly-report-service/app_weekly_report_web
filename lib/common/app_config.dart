import 'package:flutter/material.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

class AppConfig extends WinnerAppConfig {
  /// App 启动入口页面
  @override
  Widget appHome(BuildContext context) {
    return Container();
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
}
