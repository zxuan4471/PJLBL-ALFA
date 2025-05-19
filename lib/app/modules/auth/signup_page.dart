import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signin_page.dart'; // Pastikan path ini sesuai
import '../home/pages/home_page.dart';   // Jika ingin langsung ke home setelah daftar

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
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
            const SizedBox(height: 40),

            // EMAIL
            _buildLabel("EMAIL"),
            const SizedBox(height: 6),
            _buildTextField("example@gmail.com", false),

            const SizedBox(height: 16),

            // PASSWORD
            _buildLabel("PASSWORD"),
            const SizedBox(height: 6),
            _buildTextField("123456789", true),

            const SizedBox(height: 16),

            // KONFIRMASI PASSWORD
            _buildLabel("MASUKAN KEMBALI"),
            const SizedBox(height: 6),
            _buildTextField("123456789", true),

            const SizedBox(height: 24),

            // BUTTON SIGN UP
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Get.offAll(() => HomePage()); // ke home setelah daftar
                },
                child: const Text("SIGN UP", style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 16),

            // Sudah punya akun
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Kamu sudah punya aku? "),
                GestureDetector(
                  onTap: () {
                    Get.to(() => SignInPage());
                  },
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            const Text("Or"),
            const SizedBox(height: 12),

            // Social Media Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialIcon(Icons.facebook, Colors.indigo),
                const SizedBox(width: 20),
                socialIcon(Icons.alternate_email, Colors.lightBlue),
                const SizedBox(width: 20),
                socialIcon(Icons.apple, Colors.black),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTextField(String hint, bool isPassword) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: isPassword ? const Icon(Icons.visibility) : null,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
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
