import 'package:flutter/material.dart';
import 'package:flutterchallange/controllers/login_controller.dart';
import 'package:flutterchallange/presentation/components/login-screen/custom_button_login.dart';
import 'package:flutterchallange/presentation/components/login-screen/custom_field_login.dart';
import 'package:flutterchallange/presentation/components/login-screen/custom_text.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = '';
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                // Title0
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: const Color.fromARGB(255, 255, 149, 0),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Please fill out the form to continue!',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  'Username',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                CustomTextField(
                  icon: Icons.person_outline,
                  hint: 'Username',
                  isPassword: false,
                  txtController: controller.txtUsername,
                ),

                const SizedBox(height: 18),

                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 8),

                CustomTextField(
                  icon: Icons.lock_outline,
                  hint: 'Password',
                  isPassword: true,
                  txtController: controller.txtPassword,
                ),

                const SizedBox(height: 30),

                Obx(
                  () => controller.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: CustomButtonLogin(
                            onPressed: () {
                              controller.login();
                            },
                            buttonText: 'Login',
                          ),
                        ),
                ),

                const SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}