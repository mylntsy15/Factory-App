import 'package:flutter/material.dart';
import 'home_page.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  bool? isChecked = false;
  String buttonName = 'Activate';
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Image.asset(
                      'images/upm_logo.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left:
                            10.0),
                    child: Text(
                      'Welcome!',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 40, fontFamily: 'PoppinsBold'),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 2,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                width: width * 0.85,
                height: height * 0.45,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: Text(
                                  'Enter the activation code you',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Poppins'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 50.0),
                                child: Text(
                                  'received via SMS.',
                                  style: TextStyle(
                                      fontSize: 18, fontFamily: 'Poppins'),
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.info_outline),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              key: const Key('otp'),
                              controller: _otpController,
                              textAlign: TextAlign.center,
                              enabled: true,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'OTP',
                                hintStyle: TextStyle(fontFamily: 'Poppins'),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 10.0),
                              ),
                              maxLength: 6,
                              onChanged: (text) {
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Didn't receive?"),
                            Text(
                              'Tap here',
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            key: const Key('activateButton'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.purple[800],
                              backgroundColor: Colors.purple[50],
                            ),
                            onPressed: () {
                              setState(
                                () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(
                                        selectedIndex:
                                            1,
                                        onItemTapped:
                                            (index) {},
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              buttonName,
                              style: const TextStyle(
                                fontSize: 18,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 55, bottom: 20),
                    child: Text(
                      'Disclaimer | Privacy Statement',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.blue[300],
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Copyright UPM & Kejuruteraan Minyak Sawit',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
                const Text(
                  'CCS Sdn. Bhd.',
                  style: TextStyle(fontFamily: 'Poppins'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
