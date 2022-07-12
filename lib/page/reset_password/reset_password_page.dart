import 'package:app_weekly_report_web/page/reset_password/view_model/reset_password_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

typedef _VM = ResetPasswordPageViewModel;

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends BasePage<ResetPasswordPage, _VM> {
  @override
  Widget buildPage(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 300,
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "旧密码",
              ),
              // controller: viewModel.userNameEC,
            ),
          ],
        ),
      ),
    );
  }

  @override
  _VM create() {
    return _VM();
  }
}
