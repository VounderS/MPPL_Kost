import 'package:flutter/material.dart';
import 'package:kost/screen/login.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            Image.asset("assets/logo_with_text.png"),
            const SizedBox(height: 50),
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
                child: const Text("Masuk"))
          ],
        ),
      ),
    );
  }
}
