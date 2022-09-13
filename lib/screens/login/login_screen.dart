import 'dart:ui';

import 'package:animation_work/base/constants/app_constants.dart';
import 'package:animation_work/base/views/base_view.dart';
import 'package:animation_work/common_widgets/text_field_widget.dart';
import 'package:animation_work/screens/data_table/data_table_screen.dart';
import 'package:animation_work/screens/login/login_service.dart';
import 'package:animation_work/screens/login/viewmodels/login_view_model.dart';
import 'package:animation_work/screens/login/widgets/sign_up_button.dart';
import 'package:animation_work/utils/extensions/context_extension.dart';
import 'package:animation_work/utils/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView<LoginViewModel>(
        vmBuilder: (_) => LoginViewModel(service: LoginService()),
        builder: _buildScreen,
      ),
    );
  }

  Widget _buildScreen(BuildContext context, LoginViewModel viewModel) =>
      Container(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: context.height.h,
                width: context.width.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/2.jpg"), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: 530,
              left: 20,
              right: 20,
              child: Container(
                decoration: AppBoxDecorations.loginBoxDecoration,
                height: 200,
                width: context.width,
                //color: Colors.white10,
              ),
            ),
            Positioned(
              ////
              top: context.height / 1.5,
              left: 50,
              right: 50,
              child: TextFieldWidget(
                textTitle: "Enter Username",
                textHint: "Username",
                textController: viewModel.username,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Name Field Empty";
                  } else if (value.isNotEmpty) {
                    bool usernameValidate = viewModel
                        .username.text.checkUsernameContainsTurkishCharacter;

                    if (usernameValidate == true) {
                      return "Username Contains Invalid Letters";
                    } else {
                      return null;
                    }
                  }
                  return null;
                },
              ),
            ),
            Positioned(
              top: context.height / 1.3,
              left: 50,
              right: 50,
              child: TextFieldWidget(
                textTitle: "Enter Password",
                textHint: "Password",
                textController: viewModel.password,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password Field Empty";
                  }
                  return null;
                },
              ),
            ),
            Positioned(
              left: 100,
              right: 100,
              top: context.height/1.1,
              child:  SignUpButton(textTitle: "Login",onTap: () {
                Navigator.push(
          context, MaterialPageRoute(builder: (context) => const DataTableScreen()));
              },)),
          ],
        ),
      );
}
