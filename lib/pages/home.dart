import 'package:flutter/material.dart';

import '../services/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Eddy Mars", style: AppWidget.headlineTextStyle(20.0)),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(60.0),
                  child: Image.asset(
                    "images/boy2.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              "Manage your\nexpenses",
              style: AppWidget.headlineTextStyle(30.0),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 20, right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromARGB(48, 0, 0, 0),
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Expenses",
                        style: AppWidget.headlineTextStyle(18.0),
                      ),
                      Text(
                        "\$300",
                        style: TextStyle(
                          color: Color(0xffee6856),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
