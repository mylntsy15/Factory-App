import 'package:flutter/material.dart';
import 'setting_page.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'factory2.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const HomePage({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 217, 217),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingPage(
                          selectedIndex: 2,
                          onItemTapped: (index) {},
                        ),
                      ),
                    );
                  },
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      '⚠️ABD1234 IS UNREACHABLE!',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PoppinsBold',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child:
                            buildGaugeBox(30, '0.0', 'Steam Pressure', 'bar'),
                      ),
                      Expanded(
                        child: buildGaugeBox(28, '0.0', 'Steam Flow', 'T/H'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: buildGaugeBox(52, '0.0', 'Water Level', '%'),
                      ),
                      Expanded(
                        child:
                            buildGaugeBox(49, '0.0', 'Power Frequency', 'Hz'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '--:--',
                    style: TextStyle(
                      fontSize: 18,
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
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Factory2Page(
                                              selectedIndex: selectedIndex,
                                              onItemTapped: onItemTapped,
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
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(
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

  Widget buildGaugeBox(
      double value, String mainText, String topAnnotation, String superscript) {
    var children = [
      SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            startAngle: 180,
            endAngle: 0,
            interval: 25,
            minorTicksPerInterval: 0,
            minimum: 0,
            maximum: 100,
            canScaleToFit: true,
            majorTickStyle: const MajorTickStyle(length: 10),
            labelFormat: '',
            axisLineStyle: const AxisLineStyle(
              thickness: 22,
            ),
            pointers: <GaugePointer>[
              MarkerPointer(
                value: value,
                markerOffset: -15,
                markerHeight: 15,
                markerWidth: 15,
                color: const Color.fromARGB(255, 228, 217, 217),
              ),
            ],
          ),
        ],
      ),
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              topAnnotation,
              style: const TextStyle(
                fontSize: 17,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  mainText,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PoppinsBold',
                  ),
                ),
                Text(
                  superscript,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PoppinsBold',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ];
    return Container(
      width: 160,
      height: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Stack(
          children: children,
        ),
      ),
    );
  }
}
