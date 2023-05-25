// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDomain _$$_UserDomainFromJson(Map<String, dynamic> json) =>
    _$_UserDomain(
      id: json['id'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UserDomainToJson(_$_UserDomain instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'roles': instance.roles,
    };
