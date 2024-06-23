import 'package:flutter/material.dart';
import 'package:kost/screen/page/beranda.dart';
import 'package:kost/screen/page/chat.dart';
import 'package:kost/screen/page/favorit.dart';
import 'package:kost/screen/page/profil.dart';
import 'package:kost/widget/custom_drop_down.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  final List<Widget> _tabs = [
    const Beranda(),
    const Chat(),
    const Favorit(),
    const Profil(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    color: Colors.black,
                    Icons.home,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      currentPageIndex = 0;
                    });
                  },
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    color: Colors.black,
                    Icons.chat,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      currentPageIndex = 1;
                    });
                  },
                ),
              ),
              const Expanded(child: Text('')),
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    color: Colors.black,
                    Icons.favorite,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      currentPageIndex = 2;
                    });
                  },
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 40,
                  ),
                  onPressed: () {
                    setState(() {
                      currentPageIndex = 3;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _tabs[currentPageIndex],
      floatingActionButton: InkWell(
        onTap: () {},
        child: Stack(alignment: Alignment.center, children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffB8529C),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
