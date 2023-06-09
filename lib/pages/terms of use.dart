import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login controller.dart';

class TermsOfUse extends StatelessWidget {
  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView(
          children: [
            const Text('Promise me not to hurt anyone'),
            Row(
              children: [
                Checkbox(
                    value: controller.policiesCheck.value,
                    onChanged: (val) => controller.policiesCheck.value = val!),
                const Text(
                  'Agree to terms of use',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text('Get back'),
            ),
          ],
        ),
      ),
    );
  }
}
