import 'package:ditech_crm/module/user/widget/custom_profile_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constrants/injection.dart';

class UserInfoBlock extends StatelessWidget {
  const UserInfoBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Colors.blueGrey.shade100,
            ),
          ],
        ),
        width: double.infinity,
        child: Column(children: [
          CustomProfileInfoCard(
            label: "Gender",
            value: Injection.userController.userModel.value.gender,
          ),
          CustomProfileInfoCard(
            label: "Date of Birth",
            value: Injection.userController.userModel.value.birthDate,
          ),
          CustomProfileInfoCard(
            label: "Email",
            value: Injection.userController.userModel.value.email,
          ),
          CustomProfileInfoCard(
            label: "System Type",
            value: Injection.userController.userModel.value.userType,
          ),
          CustomProfileInfoCard(
            label: "Time Zone",
            value: Injection.userController.userModel.value.timeZone,
          ),
        ]),
      ),
    );
  }
}
