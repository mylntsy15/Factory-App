import 'package:flutter/material.dart';
import 'invitation_page.dart';
import 'setting_page.dart';
import 'home_page.dart';

class ProfilePage extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const ProfilePage({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 221, 221),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: const Text(
                'Factory 1',
                style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Positioned(
            top: AppBar().preferredSize.height + 60,
            left: 14,
            right: 14,
            height: 485,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 236, 236),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8.0),
                    child: Container(
                      height: 89,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Ben',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 1.0, right: 6),
                                          child: Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          '+60109219938',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 6.0),
                    child: Container(
                      height: 89,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Testing 1',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 1.0, right: 6),
                                          child: Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          '+601234567891',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 6.0),
                    child: Container(
                      height: 89,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Hello',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 1.0, right: 6),
                                          child: Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          '+60123456789',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InvitationPage(),
                            ),
                          );
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 9,
            left: 20,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: index == 0
                                      ? const Color.fromARGB(255, 43, 152, 241)
                                          .withOpacity(0.5)
                                      : const Color.fromARGB(255, 83, 81, 81)
                                          .withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 6,
                                  offset: const Offset(
                                    0,
                                    4,
                                  ),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (index == 1) {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileFactory2(
                                              selectedIndex: 0,
                                              onItemTapped: (index) {},
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                    icon: const Icon(
                                      Icons.factory,
                                      color: Colors.black,
                                    ),
                                    iconSize: 35,
                                  ),
                                  Text(
                                    'Factory ${index + 1}',
                                    style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 113, 28, 128),
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                  selectedIndex: index,
                  onItemTapped: onItemTapped,
                ),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingPage(
                  selectedIndex: 2,
                  onItemTapped: (index) {},
                ),
              ),
            );
          } else {
            onItemTapped(index);
          }
        },
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}

class ProfileFactory2 extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const ProfileFactory2({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 221, 221),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: const Text(
                'Factory 2',
                style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Positioned(
            top: AppBar().preferredSize.height + 60,
            left: 14,
            right: 14,
            height: 485,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 238, 236, 236),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 8.0),
                    child: Container(
                      height: 89,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Ben',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 1.0, right: 6),
                                          child: Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          '+60109219938',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 6.0),
                    child: Container(
                      height: 89,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Testing 1',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 1.0, right: 6),
                                          child: Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          '+601234567891',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 6.0),
                    child: Container(
                      height: 89,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Hello',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'Poppins'),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 1.0, right: 6),
                                          child: Icon(
                                            Icons.circle,
                                            size: 10,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          '+60123456789',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InvitationFactory2(),
                            ),
                          );
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 9,
            left: 20,
            right: 0,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: index == 1
                                      ? const Color.fromARGB(255, 43, 152, 241)
                                          .withOpacity(0.5)
                                      : const Color.fromARGB(255, 83, 81, 81)
                                          .withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 6,
                                  offset: const Offset(
                                    0,
                                    4,
                                  ),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (index == 0) {
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ProfilePage(
                                              selectedIndex: 0,
                                              onItemTapped: (index) {},
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                    icon: const Icon(
                                      Icons.factory,
                                      color: Colors.black,
                                    ),
                                    iconSize: 35,
                                  ),
                                  Text(
                                    'Factory ${index + 1}',
                                    style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 25,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 113, 28, 128),
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                  selectedIndex: index,
                  onItemTapped: onItemTapped,
                ),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingPage(
                  selectedIndex: 2,
                  onItemTapped: (index) {},
                ),
              ),
            );
          } else {
            onItemTapped(index);
          }
        },
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
