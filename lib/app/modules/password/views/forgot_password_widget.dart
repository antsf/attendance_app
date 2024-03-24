import 'package:attendance_app/app/modules/password/controllers/password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/methods.dart/methods.dart';
import '../../../../core/widgets/widgets.dart';

class ForgotPasswordWidget extends GetView<PasswordController> {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...customTextFormField(
                controller: controller.passwordController, label: 'Email'),
            CustomButton(
                label: 'Reset Password', onPressed: controller.resetPassword)
          ],
        ),
      ),
    );
  }
}
