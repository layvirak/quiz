import 'dart:async';
import 'dart:developer';

import 'package:ditech_crm/config/go_route/routes.dart';
import 'package:ditech_crm/constrants/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../constrants/api_service.dart';
import '../../../constrants/injection.dart';
import '../../../module/profile/model/user_model/user_model.dart';
import '../../../utils/helper/local_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    onRouter();
    super.initState();
  }

  onRouter() async {
    Injection.authController.token.value =
        await LocalStorage.getStringValue(key: 'access_token');
    if (ApiService.target != 'realease') {
      log('=======================================================================');
      log('token => ${Injection.authController.token.value}');
      log('=======================================================================');
    }

    if (Injection.authController.token.value == '') {
      Timer(const Duration(seconds: 3), () {
        router.go('/login');
      });
    } else {
      Timer(const Duration(seconds: 3), () {
        Injection.profileController.onGetUser(context).then((value) {
          if (value != UserModel()) {
            context.go('/home');
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppLogo.horizontalAppLogoNoBackGround,
                    width: 222,
                    height: 222,
                  ),
                ],
              ),
            ),
          ),
          Text(
            'Version ${ApiService.version}',
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Colors.white.withOpacity(0.6),
                  fontWeight: FontWeight.normal,
                ),
          ),
          const Gap(25),
        ],
      ),
    );
  }
}
