import 'package:covidapp/screens/bantuan_screen.dart';
import 'package:covidapp/screens/informasi_screen.dart';
import 'package:covidapp/screens/kasus_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_widget.dart';

class WrapperScreen extends StatefulWidget {
  const WrapperScreen({super.key});

  @override
  State<WrapperScreen> createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    KasusScreen(),
    InformasiScreen(),
    BantuanScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomSheet: BottomNavigationWidget(
        selectedIndex: selectedIndex,
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
      ),
    );
  }
}
