// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserInfoResponse _$GetUserInfoResponseFromJson(Map<String, dynamic> json) =>
    GetUserInfoResponse()
      ..nikeName = json['nikeName'] as String? ?? ''
      ..isAdmin = json['isAdmin'] as bool? ?? false;

Map<String, dynamic> _$GetUserInfoResponseToJson(
        GetUserInfoResponse instance) =>
    <String, dynamic>{
      'nikeName': instance.nikeName,
      'isAdmin': instance.isAdmin,
    };
