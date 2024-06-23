import 'package:flutter/material.dart';
import 'package:kost/screen/home_page.dart';
import 'package:kost/widget/custom_text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 40,
                          color: Colors.black,
                        )),
                    Image.asset("assets/logo.png"),
                    const SizedBox(
                      width: 60,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Daftar",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 35),
                    child: CustomTextField(
                      title: "Masukkan Email",
                      obscured: false,
                    )),
                const Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 25),
                    child: CustomTextField(
                      title: "Masukkan Password",
                      obscured: true,
                    )),
                const Padding(
                  padding: EdgeInsets.only(left: 40, right: 40, top: 25),
                  child: CustomTextField(
                    title: "Masukkan Kembali Password",
                    obscured: true,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
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
                    child: const Text("Daftar")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
