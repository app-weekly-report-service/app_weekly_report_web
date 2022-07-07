import 'package:app_weekly_report_web/common/app_model.dart';
import 'package:app_weekly_report_web/model/get_user_info_response.dart';
import 'package:flutter_winner_app/flutter_winner_app.dart';

class GetUserInfoApi extends Api<GetUserInfoResponse, AppModel<GetUserInfoResponse>> {

  @override
  GetUserInfoResponse get converter => GetUserInfoResponse();

  @override
  AppModel<GetUserInfoResponse> get model => AppModel<GetUserInfoResponse>();

  @override
  String get path => "/user";

  @override
  String get method => 'GET';

}