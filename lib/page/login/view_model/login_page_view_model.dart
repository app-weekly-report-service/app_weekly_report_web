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
      return;
    }
    if (passwordEC.text.isEmpty) {
      ToastStyle.showErrorToast(msg: "请输入密码");
      return;
    }
  }
}
