import 'package:example/components/input_decoration.dart';
import 'package:example/components/primary_button.dart';
import 'package:example/constant.dart';
import 'package:example/screens/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      appBar: AppBar(
        title: Text(
          "Sign in",
          style: TextStyle(
            color: ColorConstant.primaryColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // email
              TextFormField(
                controller: emailController,
                decoration: textFieldInputDecoration(
                    "email", "ex: izzat@something.com"),
              ),
              SizedBox(height: 10),
              //password
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: PrimaryButton(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageScreen(),
                            ));
                      },
                      color: ColorConstant.primaryColor,
                      text: "1",
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: PrimaryButton(
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePageScreen(),
                            ));
                      },
                      color: ColorConstant.primaryColor,
                      text: "2",
                    ),
                  ),
                ],
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: textFieldInputDecoration("password", ""),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
