import 'package:app_weekly_report_web/page/home/view_model/home_page_view_model.dart';
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
}