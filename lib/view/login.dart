import 'package:amazon/view/home_page.dart';
import 'package:amazon/provider/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(top: 42,bottom: 22,left: 8,right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up ",
                    style: TextStyle(fontSize: 33, color: textColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 370,
                    height: 35,
                    decoration: const BoxDecoration(
                        color: Colors.white54, border: Border()),
                    child: TextField(
                      controller: providerClass.nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(hintText: "Full Name"),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 370,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: TextField(
                      controller: providerClass.emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(hintText: "Email"),
                    ),
                  ),
                   const SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 370,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: TextField(
                      controller: providerClass.phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(hintText: "Phone Number"),
                    ),
                  ),
                   const SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 370,
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                    ),
                    child: TextField(
                      controller: providerClass.passwordController,
                      obscureText: providerClass.isObsecuText,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: providerClass.isObsecuText
                              ? Icon(Icons.visibility_off_sharp)
                              : Icon(Icons.visibility),),
                      onTap: (){
                        providerClass.isObsecuText = ! providerClass.isObsecuText;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                                style:
                                    TextStyle(color: Colors.black, fontSize: 14),
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => HomePage()));
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
