import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/sizes.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: [
          Container(color: Colors.blue,),
          Container(color: Colors.redAccent,),
          Container(color: Colors.green,),
          Container(color: Colors.deepPurpleAccent,),
          Container(color: Colors.yellowAccent,),
        ],
        height: TSizes.navbarHeight,
      ),
    );
  }
}