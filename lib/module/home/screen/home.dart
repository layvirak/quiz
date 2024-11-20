import 'package:ditech_crm/constrants/injection.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constrants/api_service.dart';
import '../../../constrants/app_logo.dart';
import '../../../utils/widget/custom_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Image.asset(
          AppLogo.horizontalAppLogoNoBackGround,
          fit: BoxFit.cover,
        ),
        actions: [
          // if (ApiService.target != "release")
          //   IconButton(
          //     onPressed: () {
          //       context.push('/notification');
          //     },
          //     icon: const Icon(Icons.notifications_active),
          //     iconSize: 27,
          //   ),
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: CustomAvatar(
              image: Injection.profileController.userModel.value.userImage,
              ontap: () {
                context.push('/profile');
              },
              borderRadius: 1000,
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}
