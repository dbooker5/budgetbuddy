import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f5f4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            /// PROFILE IMAGE
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("images/boy2.jpg"),
            ),

            const SizedBox(height: 30),

            /// NAME
            profileInfoTile(
              icon: Icons.person,
              title: "Name",
              value: "Eddy Mars",
            ),

            /// EMAIL
            profileInfoTile(
              icon: Icons.email,
              title: "Email",
              value: "eddymars99@gmail.com",
            ),

            /// ADD EXPENSE
            profileActionTile(
              icon: Icons.add_card,
              text: "Add Expense",
              onTap: () {},
            ),

            /// ADD INCOME
            profileActionTile(
              icon: Icons.attach_money,
              text: "Add Income",
              onTap: () {},
            ),

            /// LOGOUT
            profileActionTile(icon: Icons.logout, text: "LogOut", onTap: () {}),

            /// DELETE ACCOUNT
            profileActionTile(
              icon: Icons.delete,
              text: "Delete Account",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

/// INFO TILE (Name / Email)
Widget profileInfoTile({
  required IconData icon,
  required String title,
  required String value,
}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 15),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    decoration: BoxDecoration(
      color: const Color(0xffef7a6a),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon, color: Colors.white, size: 28)],
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

/// ACTION TILE (With Arrow)
Widget profileActionTile({
  required IconData icon,
  required String text,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xffef7a6a),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 26),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
        ],
      ),
    ),
  );
}
