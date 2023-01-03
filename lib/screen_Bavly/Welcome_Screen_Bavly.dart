import 'package:flutter/material.dart';
import 'package:phone_auth_flutter_project/Provider_Bavly/auth_provider.dart';
import 'package:phone_auth_flutter_project/Widget_bavly/Custom_Button_Bavly.dart';
import 'package:phone_auth_flutter_project/screen_Bavly/Home_Screen_Bavly.dart';
import 'package:phone_auth_flutter_project/screen_Bavly/Register_Screen_Bavly.dart';
import 'package:provider/provider.dart';

class welcome extends StatefulWidget {
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<Auth_Provider_Bavly>(context, listen: false);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
          child: Column(
            children: [
              Image.asset(
                "assets/image/image1.png",
                height: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Let's get started ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              const Text("Never a better time than now to start.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton_Bavly(
                  onPressed: () {
                    ap.isSignedIn == true
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreenBavly()))
                        : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RegisterScreen_Bavly()));
                  },
                  text: "Get started",
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
