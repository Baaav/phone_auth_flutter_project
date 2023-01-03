import 'package:flutter/material.dart';
import 'package:phone_auth_flutter_project/Provider_Bavly/auth_provider.dart';
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
      body: Center(child: Text("HomeScreen")),
    );
  }
}
