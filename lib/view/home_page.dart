import 'package:amazon/provider/provider_class.dart';

import 'package:amazon/view/third_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("home page "),
        ),
        body: Consumer<ProviderClass>(builder: (context, providerClass, child) {
          return Column(
            children: [
              Image.asset("assets/images/furniture.jpg"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 250,
                    height: 205,
                    decoration: BoxDecoration(
                      color: Color(0xffdaf0ff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text("Welcome :    "),
                        Text("${providerClass.nameController.text}"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "Your email is :${providerClass.emailController.text}"),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "phone number is :${providerClass.phoneController.text}")
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Quantity: ",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffFFE4F3),
                          borderRadius: BorderRadius.circular(19)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: () {
                                  providerClass.decrementFunction();
                                },
                                icon: Icon(Icons.remove_outlined)),
                          ),
                          Text(
                            "${providerClass.counter}",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: () {
                                  providerClass.incrementFunction();
                                },
                                icon: Icon(Icons.add)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:16,bottom: 16,right: 22,left: 22),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.deepOrangeAccent)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ThirdPage()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          size: 20,
                        ),
                        Text("add to cart "),
                      ],
                    )),
              )
            ],
          );
        }));
  }
}
