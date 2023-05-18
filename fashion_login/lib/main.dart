import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _buildTextField(IconData icon, String hintText, bool isPassword) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      decoration: const BoxDecoration(
        color: Color.fromARGB(198, 22, 21, 21),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(
          color: Color.fromARGB(255, 212, 212, 212),
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: const Color.fromARGB(255, 196, 196, 196),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 145, 145, 145),
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/background.jpg",
              fit: BoxFit.cover,
              color: Colors.black45,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Sign in to your account",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  _buildTextField(Icons.mail_outline, "Email", false),
                  const SizedBox(
                    height: 15,
                  ),
                  _buildTextField(Icons.lock_outline, "Password", true),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                      padding: EdgeInsets.only(top: 4, right: 8),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Text("Forgot Password",
                              style: TextStyle(
                                  letterSpacing: 0.5,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)))),
                  const SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: double.maxFinite,
                    color: const Color.fromARGB(255, 184, 36, 26),
                    elevation: 0,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(bottom: 80),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Google",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          color: Colors.white,
                        ),
                        Row(
                          children: const [
                            Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
