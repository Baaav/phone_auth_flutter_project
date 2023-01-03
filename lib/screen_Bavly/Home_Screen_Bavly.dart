import 'package:flutter/material.dart';
import 'package:phone_auth_flutter_project/Provider_Bavly/auth_provider.dart';
import 'package:phone_auth_flutter_project/screen_Bavly/Welcome_Screen_Bavly.dart';
import 'package:provider/provider.dart';

class HomeScreenBavly extends StatefulWidget {
  const HomeScreenBavly({super.key});

  @override
  State<HomeScreenBavly> createState() => _HomeScreenBavlyState();
}

class _HomeScreenBavlyState extends State<HomeScreenBavly> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<Auth_Provider_Bavly>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("FlutterPhone Auth"),
        actions: [
          IconButton(
            onPressed: () {
              ap.userSignOut().then(
                    (value) => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const welcome(),
                      ),
                    ),
                  );
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.purple,
            backgroundImage: NetworkImage(ap.userModel.profilePic),
            radius: 50,
          ),
          const SizedBox(height: 20),
          Text(ap.userModel.name),
          Text(ap.userModel.phoneNumber),
          Text(ap.userModel.email),
          Text(ap.userModel.bio),
        ],
      )),
    );
  }
}
