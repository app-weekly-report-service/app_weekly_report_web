import 'package:app_weekly_report_web/api/login_api.dart';
import 'package:app_weekly_report_web/manager/user_manager.dart';
import 'package:darty_json_safe/darty_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

class LoginPageViewModel extends BaseViewModel {
  /// 用户名
  final TextEditingController userNameEC = TextEditingController();

  /// 密码
  final TextEditingController passwordEC = TextEditingController();

  Future<void> onLogin() async {
    if (userNameEC.text.isEmpty) {
      ToastStyle.showErrorToast(msg: "请输入用户名");
      return ;
    }
    if (passwordEC.text.isEmpty) {
      ToastStyle.showErrorToast(msg: "请输入密码");
      return ;
    }
    final api = LoginApi(username: userNameEC.text, password: passwordEC.text);
    final model = await request(api: api);
    if (model == null) return ;
    await Unwrap(model.data).map((e) async => await UserManager().login(e)).value;
  }
}
