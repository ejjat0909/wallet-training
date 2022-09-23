import 'package:example/components/primary_button.dart';
import 'package:example/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Text("Wallet Balance: ${0.toStringAsFixed(2)}"),
            //amount
            TextFormField(
              controller: amountController,
            ),
            SizedBox(
              height: 20,
            ),
            PrimaryButton(
              press: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => HomePageScreen(),
                //     ));
              },
              color: ColorConstant.primaryColor,
              text: "Topup Now",
            ),
          ],
        ),
      ),
    );
  }
}
