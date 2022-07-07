import 'package:json_annotation/json_annotation.dart';

part 'get_user_info_response.g.dart';
@JsonSerializable(explicitToJson: true)
class GetUserInfoResponse extends JsonConverter<GetUserInfoResponse, Map<String, dynamic>> {  

  @JsonKey(defaultValue: '')
  late String nikeName;  

  @JsonKey(defaultValue: false)
  late bool isAdmin;

  GetUserInfoResponse();  

  @override
  GetUserInfoResponse fromJson(Map<String, dynamic> json) {
      return _$GetUserInfoResponseFromJson(json);
  }  

  @override
  Map<String, dynamic> toJson(GetUserInfoResponse object) {
      return _$GetUserInfoResponseToJson(object);
  }

}
