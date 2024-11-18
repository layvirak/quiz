import 'package:ditech_crm/cores/auth/screen/login_screen.dart';
import 'package:ditech_crm/cores/splash_screen/screen/splash_screen.dart';
import 'package:ditech_crm/module/notification/screen/notification_screen.dart';
import 'package:go_router/go_router.dart';

import '../../module/home/screen/home.dart';
import '../../module/user/screen/user_screen.dart';

final router = GoRouter(
  initialLocation: '/splash-screen',
  routes: [
    GoRoute(
      path: '/splash-screen',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/notification',
      builder: (context, state) => const NotificationScreen(),
    ),
  ],
);
