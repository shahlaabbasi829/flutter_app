import 'package:flutter/material.dart';
import 'signup.dart';
import 'forgot_password.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),

            const Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Login to your account",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),

const Text(
  "Email",
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 8),

TextField(
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    hintText: "Enter your email",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
),
const Text(
  "Password",
  style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  ),
),
const SizedBox(height: 8),

TextField(
  obscureText: true,
  decoration: InputDecoration(
    hintText: "Enter your password",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
),
Align(
  alignment: Alignment.centerRight,
  child: TextButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ForgotPassword(),
        ),
      );
    },
    child: const Text(
      "Forgot Password?",
    ),
  ),
),
const SizedBox(height: 20),
Center(
  child: SizedBox(
    width: 200,
    height: 50,
    child: ElevatedButton(
      onPressed: () {},
      child: const Text(
        "Login",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
),
const SizedBox(height: 20),

TextButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Signup(),
      ),
    );
  },
  child: const Text("Don't have an account? Sign Up"),
),
          ],
          
        ),
      ),
    );
  }
}