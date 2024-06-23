import 'package:flutter/material.dart';
import 'package:kost/screen/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 45, right: 45),
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                Image.asset("assets/logo_with_text.png"),
                const SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Masukkan Email',
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Masukkan Password',
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 29,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fixedSize: const Size(180, 50),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24)),
                    child: const Text("Masuk")),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Tidak Punya Akun? ",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    InkWell(
                      child: const Text("Daftar",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
