import 'package:amazon/shared/custom_text_field.dart';
import 'package:amazon/view/home_page.dart';
import 'package:amazon/provider/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  Color backgroundColor = Color(0xffD4F1F4);
  Color textColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child:
              Consumer<ProviderClass>(builder: (context, providerClass, child) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 42, bottom: 22, left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    "Sign Up ",
                    style: TextStyle(
                        fontSize: 33,
                        color: textColor,
                        fontWeight: FontWeight.bold),
                  ),
                  CustomTextField(
                      hintText: "Full Name",
                      controller: providerClass.nameController,
                      textInputType: TextInputType.text),
                  CustomTextField(
                      hintText: "Email",
                      controller: providerClass.emailController,
                      textInputType: TextInputType.emailAddress),
                  CustomTextField(
                      hintText: "Phone Number",
                      controller: providerClass.phoneController,
                      textInputType: TextInputType.phone),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 370,
                      height: 55,
                      decoration: const BoxDecoration(
                        color: Colors.white54,
                      ),
                      child: TextField(
                        controller: providerClass.passwordController,
                        obscureText: providerClass.isObsecuText,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontSize: 22),
                          suffixIcon: providerClass.isObsecuText
                              ? Icon(Icons.visibility_off_sharp)
                              : Icon(Icons.visibility),
                        ),
                        onTap: () {
                          providerClass.isObsecuText =
                              !providerClass.isObsecuText;
                        },
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        onChanged: (newValue) {
                          providerClass.isChecked = true;
                        },
                        value: providerClass.isChecked,
                      ),
                      Text.rich(
                        TextSpan(
                            text: "I agreeded with ",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                            children: [
                              TextSpan(
                                text: "Terms & Services",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: " of the app",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                              )
                            ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  ElevatedButton(
                      onPressed: providerClass.isChecked
                          ? () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomePage()));
                            }
                          : null,
                      child: Text("Save"))
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
