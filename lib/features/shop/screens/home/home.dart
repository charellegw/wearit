import 'package:flutter/material.dart';
import 'package:wearit/common/custom_container/app_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TAppHeader(child: Column(
              children: [

              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}