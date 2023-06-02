
import 'package:frontend/presentation/BabyStatus/baby_status_page.dart';
import 'package:frontend/presentation/appointments/appointment_page.dart';
import 'package:frontend/presentation/bottom_nav/bottom_nav.dart';
import 'package:frontend/presentation/login/login_page.dart';
import 'package:frontend/presentation/profile/profile.dart';
import 'package:frontend/presentation/signup/signup_page.dart';
import 'package:frontend/presentation/tips/home_page.dart';
import 'package:go_router/go_router.dart';
import '../notes/symptoms/notes_page.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/signup',
    builder: (context, state) => const SignUpPage(),
  ),
  GoRoute(
    path: '/landingpage',
    builder: (context, state) => const BottomNavigation(),
  ),
  GoRoute(
    path: '/notes',
    builder: (context, state) => const NotesPage(),
  ),
  GoRoute(
    path: '/tips',
    builder: (context, state) => const TipsHomePage(),
  ),
  GoRoute(
    path: '/appointments',
    builder: (context, state) => const AppointmentsPage(),
  ),
  GoRoute(
    path: '/calendar',
    builder: (context, state) => const BabyStatusPage(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => const ProfilePage()
  )
]);
