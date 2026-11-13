import 'package:flutter/material.dart';
import 'package:project1/FacebookApp/core/theming/colors/facebook_app_colors.dart';
import 'package:project1/FacebookApp/features/home_widgets/home_screen.dart';
import '../../core/shared_widgets/custom_elevated_button.dart';
import '../../core/shared_widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static String routeName = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool isPasswordHidden = true;

  String? validateEmailAndPhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email or phone number';
    }
    //Email Validation
    final emailRegex = RegExp(r'^[\w.+-]+@[\w-]+\.[\w.-]+$');
    //Phone Validation
    final phoneRegex = RegExp(r'^01[0125][0-9]{8}$');

    if (!emailRegex.hasMatch(value) && !phoneRegex.hasMatch(value)) {
      return 'Invalid email or phone number';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    final passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>]).+$',
    );

    if (!passwordRegex.hasMatch(value)) {
      return 'Password must contain uppercase, lowercase, numbers and special characters';
    }
    return null;
  }

  void login() {
    if (formKey.currentState!.validate()) {
      Navigator.of(context).pushNamed(HomeScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FacebookAppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 74),
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/facebook_logo.png",
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 62),
                  CustomTextField(
                    hintText: 'Mobile Number or Email address',
                    controller: emailController,
                    validator: validateEmailAndPhone,
                  ),
                  const SizedBox(height: 25),
                  CustomTextField(
                    hintText: 'Password',
                    controller: passwordController,
                    validator: validatePassword,
                    isPassword: true,
                    obscureText: isPasswordHidden,
                    onVisibilityPressed: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;
                      });
                    },
                  ),
                  const SizedBox(height: 40),
                  CustomElevatedButton(buttonText: "Login", onPressed: login),
                  const SizedBox(height: 24),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgotten Password?",
                      style: TextStyle(
                        color: FacebookAppColors.greyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  CustomElevatedButton(
                    buttonText: "Create Account",
                    onPressed: () {},
                    isOutlined: true,
                  ),
                  const SizedBox(height: 10),
                  Image.asset("assets/images/meta_logo.png", width: 98),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
