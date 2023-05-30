import 'package:frontend/infrastructure/auth/user_dto.dart';

class LoginResponseDto {
  final String access_token;
  final UserDto user;

  LoginResponseDto({
    required this.access_token,
    required this.user,
  });

  factory LoginResponseDto.fromJson(Map<String, dynamic> json) {
    return LoginResponseDto(
      access_token: json['access_token'],
      user: UserDto.fromJson(json['user']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': access_token,
      'user': user.toJson(),
    };
  }
}
