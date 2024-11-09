import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Ensure you have this import for FontAwesomeIcons
import 'package:platdev24/src/screen/index.dart';
import 'package:platdev24/src/widgets/constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // Add SafeArea to avoid system UI interference
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(45),
      width: MediaQuery.of(context).size.width,
      color: mainBGColor,
      child: SingleChildScrollView( // Allow scrolling
        child: Center(
          child: _buildLoginCard(context), // Pass context to the card method
        ),
      ),
    );
  }

  Widget _buildLoginCard(BuildContext context) { // Accept context as parameter
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints(
          maxWidth: 400,
          maxHeight: 600, // Increased height to accommodate more content
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildTitle(),
            const SizedBox(height: 20),
            _buildEmailField(),
            const SizedBox(height: 10),
            _buildPasswordField(),
            const SizedBox(height: 10),
            _buildForgotHelpRow(),
            const SizedBox(height: 10),
            _buildSignInButton(context), // Pass context to the button method
            const SizedBox(height: 20),
            _buildSocialSignInText(),
            const SizedBox(height: 10),
            _buildSocialButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return const Text(
      "Sign In",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildEmailField() {
    return TextField(
      decoration: textFieldStyle.copyWith(
        labelText: 'Email Address',
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextField(
      obscureText: true,
      decoration: textFieldStyle.copyWith(
        labelText: 'Password',
      ),
    );
  }

  Widget _buildForgotHelpRow() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Forgot Password"),
        Text("Help"),
      ],
    );
  }

  Widget _buildSignInButton(BuildContext context) { // Accept context as parameter
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const IndexScreen()), // Fixed context typo
          );
        }, // Function to handle sign-in
        child: const Text("Sign In"),
      ),
    );
  }

  Widget _buildSocialSignInText() {
    return const Text(
      "Or sign in with",
      textAlign: TextAlign.center,
    );
  }

  Widget _buildSocialButtons() {
    return Wrap( // Use Wrap to prevent overflow
      alignment: WrapAlignment.center,
      spacing: 10, // Space between buttons
      children: [
        _buildSocialButton(FontAwesomeIcons.apple, "Apple"), // Apple Button
        _buildSocialButton(FontAwesomeIcons.google, "Google"), // Google Button
        _buildSocialButton(FontAwesomeIcons.facebook, "Facebook"), // Facebook Button
        _buildSocialButton(FontAwesomeIcons.x, "X"), // X Button
      ],
    );
  }

  Widget _buildSocialButton(IconData icon, String label) {
    return SizedBox(
      width: 70,
      height: 70,
      child: OutlinedButton(
        onPressed: () {
          // Function to handle sign-in for each social button
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30), // Dynamic Icon
            const SizedBox(height: 5),
            Text(label), // Display label
          ],
        ),
      ),
    );
  }
}
