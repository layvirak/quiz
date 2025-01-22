import 'package:flutter/material.dart';
import 'package:lomhat/cores/auth/screen/login_screen.dart';
import 'package:lomhat/cores/splash_screen/screen/splash_screen.dart';
import 'package:lomhat/module/notification/screen/notification_screen.dart';
import 'package:lomhat/module/profile/screen/change_password.dart';
import 'package:go_router/go_router.dart';

import '../../module/home/screen/home.dart';
import '../../module/profile/screen/input_user_infor_screen.dart';
import '../../module/profile/screen/profile_screen.dart';
import '../../module/profile/screen/term_and_conditionsreen.dart';
import '../../module/question/screen/question_detail_screen.dart';

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
    GoRoute(
      path: '/input-user-infor',
      builder: (context, state) => const InputUserInforScreen(),
    ),
    GoRoute(
      path: '/term-condition',
      builder: (context, state) => const PrivacyPolicyScreen(),
    ),
    GoRoute(
      path: '/change-password',
      builder: (context, state) => const ChangePasswordScreen(),
    ),
    //***************************************************************
    //##########--question--##########=>Rak
    //***************************************************************
    GoRoute(
        path: '/question',
        builder: (context, state) => const ChangePasswordScreen(),
        routes: [
          GoRoute(
            path: ':id',
            builder: (BuildContext context, GoRouterState state) {
              return QuestionDetailScreen(
                name: state.pathParameters['id'],
              );
            },
            routes: const <GoRoute>[],
          ),
        ]),
  ],
);
