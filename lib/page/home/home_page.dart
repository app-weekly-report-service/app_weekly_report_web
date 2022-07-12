import 'package:app_weekly_report_web/page/home/view_model/home_page_view_model.dart';
import 'package:app_weekly_report_web/page/menu/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePage<HomePage, HomePageViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return Container();
  }

  @override
  HomePageViewModel create() {
    return HomePageViewModel();
  }

  @override
  Scaffold scaffold(BuildContext context, BasePageController pageController) {
    final _scaffold = super.scaffold(context, pageController);
    return Scaffold(
      appBar: _scaffold.appBar,
      body: _scaffold.body,
      resizeToAvoidBottomInset: _scaffold.resizeToAvoidBottomInset,
      drawer: const SizedBox(width: 150, child: MenuPage()),
    );
  }
}
