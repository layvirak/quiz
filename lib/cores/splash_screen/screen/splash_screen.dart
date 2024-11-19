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
    // LocalStorage.storeData(
    //     key: 'access_token', value: "token 6bd945c782ddd9d:c9abe1ba8804c6c");
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
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppLogo.verticalAppLogo,
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
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.normal,
                ),
          ),
          const Gap(5),
          Text(
            'Powered by DiTech',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black.withOpacity(0.6),
                ),
          ),
          const Gap(25),
        ],
      ),
    );
  }
}
