import 'package:flutter/material.dart';
import 'authentication_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? isChecked = false;
  String buttonName = 'Get Activation Code';

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
                        left: 10.0),
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
                // container pink
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 212, 212),
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
                                  'Enter your mobile number to',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 50.0),
                                child: Text(
                                  'activate your account.',
                                  style: TextStyle(fontSize: 20),
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
                        const SizedBox(width: 20),
                        Image.asset('images/malaysia.png'),
                        const SizedBox(width: 5),
                        const Text('+60'),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                key: const Key('phone'),
                                enabled: true,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                ),
                              ),
                            )),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                                key: const Key('termsCheckbox'),
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                }),
                            const Text('I agree to terms & conditions')
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            key: const Key('activationCodeButton'),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.purple[800],
                              backgroundColor: Colors.purple[50],
                            ),
                            onPressed: () {
                              setState(
                                    () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                      const AuthenticationPage(),
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
