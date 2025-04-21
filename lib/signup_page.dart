import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
            ),
            SizedBox(height: 40),

            // EMAIL
            Align(
              alignment: Alignment.centerLeft,
              child: Text("EMAIL", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                hintText: "example@gmail.com",
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 16),

            // PASSWORD
            Align(
              alignment: Alignment.centerLeft,
              child: Text("PASSWORD", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 6),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "123456789",
                suffixIcon: Icon(Icons.visibility),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 16),

            // MASUKAN KEMBALI
            Align(
              alignment: Alignment.centerLeft,
              child: Text("MASUKAN KEMBALI", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 6),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "123456789",
                suffixIcon: Icon(Icons.visibility),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 24),

            // BUTTON SIGN UP
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                child: Text("SIGN UP", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 16),

            // Sudah punya akun
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Kamu sudah punya aku? "),
                GestureDetector(
                  onTap: () {
                    // Navigasi ke halaman login nanti
                  },
                  child: Text("LOGIN", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(height: 24),

            // OR
            Text("Or"),
            SizedBox(height: 12),

            // Social Media Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialIcon(Icons.facebook, Colors.indigo),
                SizedBox(width: 20),
                socialIcon(Icons.alternate_email, Colors.lightBlue),
                SizedBox(width: 20),
                socialIcon(Icons.apple, Colors.black),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget socialIcon(IconData icon, Color color) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: color,
      child: Icon(icon, color: Colors.white),
    );
  }
}
