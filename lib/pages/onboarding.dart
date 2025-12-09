import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8edc2),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 120.0),
            Image.asset("images/onboard.png"),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 30.0),
                    Text(
                      "Manage your daily\n life expenses",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        "BudgetBuddy is a simple and efficient personal finance management app that allows you to track your expenses, income and save money.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color.fromARGB(160, 0, 0, 0),
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
