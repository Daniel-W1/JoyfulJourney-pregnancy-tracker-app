import 'package:frontend/domain/auth/role_domain.dart';
import 'package:frontend/domain/auth/token.dart';
import 'package:frontend/domain/auth/user_name_domain.dart';

class LoggedInDomain {
  Username username;
  Token token;
  Role role;

  LoggedInDomain(
      {required this.token, required this.username, required this.role});
}
