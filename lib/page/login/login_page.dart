import 'package:app_weekly_report_web/page/home/home_page.dart';
import 'package:app_weekly_report_web/page/login/view_model/login_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePage<LoginPage, LoginPageViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFFEB95FA),
          Color(0xFF63D0F9),
          Color(0xFF78FB93),
        ]),
      ),
      child: Center(child: _loginContent(context)),
    );
  }

  Widget _loginContent(BuildContext context) {
    return Container(
      width: 500,
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("登录", style: TextStyle(fontSize: 30)),
          hiSpace(height: 20),
          TextField(
            decoration: const InputDecoration(
              labelText: "用户名",
              prefixIcon: Icon(Icons.person),
            ),
            controller: viewModel.userNameEC,
          ),
          hiSpace(height: 20),
          TextField(
            decoration: const InputDecoration(
              labelText: "密码",
              prefixIcon: Icon(Icons.lock),
            ),
            controller: viewModel.passwordEC,
          ),
          hiSpace(height: 50),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () => viewModel.onLogin(),
              child: const Text("登录"),
            ),
          ),
        ],
      ),
    );
  }

  @override
  LoginPageViewModel create() {
    return LoginPageViewModel();
  }

  @override
  void configPage(BasePageController controller, BuildContext context) {
    super.configPage(controller, context);
    controller.hiddenAppBar = true;
  }
}
