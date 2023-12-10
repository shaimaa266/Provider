import 'package:amazon/provider/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderClass>(builder: (context, providerClass, child) {
      return Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.person,
              size: 70,
            ),
            actions: [
              Stack(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    size: 70,

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CircleAvatar(

                      child: Text("${providerClass.counter}"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 4, bottom: 22, left: 8, right: 8),
                    child: Image.asset("assets/images/furniture.jpg"),
                  ),
                  Text("cart list  items are  updates",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                  Text(
                    "items num :${providerClass.counter}",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  )
                ],
              ),
            ),
          ));
    });
  }
}
