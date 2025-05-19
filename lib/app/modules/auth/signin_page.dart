import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart'; // Jika kamu pakai named routes
import '../home/pages/home_page.dart'; // Ubah sesuai struktur kamu

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
            ),
            const SizedBox(height: 40),

            _buildLabel("EMAIL"),
            const SizedBox(height: 6),
            _buildTextField("example@gmail.com", false),

            const SizedBox(height: 16),

            _buildLabel("PASSWORD"),
            const SizedBox(height: 6),
            _buildTextField("********", true),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Get.offAll(() => const HomePage()); // atau Get.offAllNamed(Routes.HOME);
                },
                child: const Text("SIGN IN", style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Belum punya akun? "),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.SIGNUP); // atau: Get.to(() => const SignUpPage());
                  },
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text("Or"),
            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialIcon(Icons.facebook, Colors.indigo),
                const SizedBox(width: 20),
                _socialIcon(Icons.alternate_email, Colors.lightBlue),
                const SizedBox(width: 20),
                _socialIcon(Icons.apple, Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  static Widget _buildTextField(String hint, bool isPassword) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: isPassword ? const Icon(Icons.visibility_off) : null,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  static Widget _socialIcon(IconData icon, Color color) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: color,
      child: Icon(icon, color: Colors.white),
    );
  }
}
