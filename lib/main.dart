import 'package:app_weekly_report_web/common/app_config.dart';
import 'package:app_weekly_report_web/common/app_model.dart';
import 'package:app_weekly_report_web/manager/user_manager.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

void main() {
  final config = AppConfig();
  WinnerApp(config).appMain(appInit: () async {
    /// 做页面加载之前的初始化工作
    await AppCacheManager().initCacheData();
    await UserManager().init();
  });
}
