import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 77, 76, 76),
      body: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10),
                children: const [
                  Text(
                    'Message',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Online',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Groups',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    'Message',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 200,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
            height: 220,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color.fromARGB(255, 0, 165, 126)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Favourite contacts',
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 90,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    buildContacts(),
                    buildContacts(),
                    buildContacts(),
                    buildContacts(),
                    buildContacts(),
                    buildContacts(),
                  ]),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 365,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                mess(),
                mess(),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Row mess() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildContacts(),
        const SizedBox(
          width: 20,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rajesh'),
            Text('Hello dost jam cake house.'),
          ],
        ),
      ],
    );
  }

  Column buildContacts() {
    return const Column(
      children: [
        Contacts(
          name: 'perosn.jpg',
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Ouawa',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class Contacts extends StatelessWidget {
  final String name;
  const Contacts({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: CircleAvatar(
        radius: 32,
        backgroundImage: Image.asset('assets/white.jpg').image,
        child: CircleAvatar(
          radius: 29,
          foregroundImage: Image.asset('assets/$name').image,
        ),
      ),
    );
  }
}
