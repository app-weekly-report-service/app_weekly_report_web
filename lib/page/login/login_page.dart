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
