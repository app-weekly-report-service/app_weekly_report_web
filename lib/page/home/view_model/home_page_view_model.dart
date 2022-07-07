import 'package:app_weekly_report_web/api/get_user_info_api.dart';
import 'package:app_weekly_report_web/manager/user_manager.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

class HomePageViewModel extends BaseViewModel {

  HomePageViewModel() {
    _init();
  }

  Future<void> _init() async {
    await _loadUserInfo();
    hiddenHUD();
  }

  Future<void> _loadUserInfo() async {
    final api = GetUserInfoApi();
    final model = await request(api: api);
    if (model == null) return ;
    UserManager().userInfo = model.data;
  }
}