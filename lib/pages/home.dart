import 'package:fl_chart/fl_chart.dart';
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
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
                bottom: 20,
              ),
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
                      Spacer(),
                      Text(
                        "\$300",
                        style: TextStyle(
                          color: Color(0xffee6856),
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20.0),
                    ],
                  ),

                  Text(
                    "1 Sep 2025 - 30 Sep 2025",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        child: PieChart(
                          PieChartData(
                            sectionsSpace: 0,
                            centerSpaceRadius: 40,
                            startDegreeOffset: 0,
                            //Red Section
                            sections: [
                              PieChartSectionData(
                                color: const Color(0xffee6856),
                                value: 50,
                                title: "50%",
                                radius: 35,
                                titleStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              // Green Section
                              PieChartSectionData(
                                color: const Color(0xff70C159),
                                value: 30,
                                title: "30%",
                                radius: 35,
                                titleStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              //Teal Section
                              PieChartSectionData(
                                color: const Color(0xff1ca8b8),
                                value: 20,
                                title: "20%",
                                radius: 35,
                                titleStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _LegendItem(
                              color: Color(0xffee6856),
                              title: "Shopping",
                              price: "\$500",
                            ),
                            SizedBox(height: 10.0),
                            _LegendItem(
                              color: Color(0xff70c159),
                              title: "Grocery",
                              price: "\$300",
                            ),
                            SizedBox(height: 10.0),
                            _LegendItem(
                              color: Color(0xff1ca8b8),
                              title: "Others",
                              price: "\$200",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            // --- Toggle Buttons (This Month / This Year) ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        "This Month",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xffee6856),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffee6856).withOpacity(0.4),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "This Year",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            // --- Bottom Stats Cards ---
            Row(
              children: [
                Expanded(
                  child: _StatCard(
                    title: "Income",
                    amount: "+\$5000",
                    amountColor: Color(0xff70c159),
                    barColor: Color(0xff6b7ae6),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: _StatCard(
                    title: "Expenses",
                    amount: "+\$5000",
                    amountColor: Color(0xffee6856),
                    barColor: Color(0xffee6856),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  const _LegendItem({
    required this.color,
    required this.title,
    required this.price,
  });

  final Color color;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(width: 10, height: 10, color: color),
        SizedBox(width: 8),
        Text(title, style: TextStyle(fontSize: 14)),
        Spacer(),
        Text(
          price,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.title,
    required this.amount,
    required this.amountColor,
    required this.barColor,
  });

  final String title;
  final String amount;
  final Color amountColor;
  final Color barColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(height: 8),
          Text(
            amount,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: amountColor,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 5,
            decoration: BoxDecoration(
              color: barColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
