import 'package:flutter/material.dart';
import 'package:simrs_telmed/common/styles/spacing_styles.dart';
import 'package:simrs_telmed/features/authentication/screens/login%20(temp)/widgets/login_form.dart';
import 'package:simrs_telmed/features/authentication/screens/login%20(temp)/widgets/login_form_divider.dart';
import 'package:simrs_telmed/features/authentication/screens/login%20(temp)/widgets/login_header.dart';
import 'package:simrs_telmed/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Penjarak
              SizedBox(height: TSizes.appBarBodyHeight),

              // Header
              // Logo, Title, Subtitle
              TLoginHeader(),

              // Form
              TLoginForm(),

              // Divider
              TFormDivider(dividerText: "Placeholder Text",)
            ],
          ),
        ),
      ),
    );
  }
}