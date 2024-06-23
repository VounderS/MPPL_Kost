import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 184, 82, 157),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 50,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 50,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "MauKi Cari Kos?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const Text(
                "Dapatkan informasi seputar kos Majene!",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            print("object");
                          },
                          child: Container(
                            width: 50,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 200, 77, 100),
                            ),
                            child: const Center(child: Text("Cari")),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Kategori",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text("Tipe Kos"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 49,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text("Harga"),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 49,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 25,
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text("Fasilitas"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 30),
                itemCount: 3,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemBuilder: (context, index) {
                  return Container(
                    height: 161,
                    width: 286,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://picsum.photos/250?image=4'))),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
