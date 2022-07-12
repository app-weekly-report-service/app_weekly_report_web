import 'package:app_weekly_report_web/page/menu/view_model/menu_page_view_model.dart';
import 'package:app_weekly_report_web/page/reset_password/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends BasePage<MenuPage, MenuPageViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => _onResetPasswordClick(context),
              child: const Text("修改密码"),
            ),
          ),
        ],
      ),
    );
  }

  void _onResetPasswordClick(BuildContext context) {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => const ResetPasswordPage(),
    );
  }

  @override
  MenuPageViewModel create() {
    return MenuPageViewModel();
  }

  @override
  void configPage(BasePageController controller, BuildContext context) {
    super.configPage(controller, context);
    controller.hiddenAppBar = true;
  }
}
