import 'package:app_bus_boletos/screen/home/tabs/account_tab/account_tab.dart';
import 'package:app_bus_boletos/screen/home/tabs/home_tab/home_tab.dart';
import 'package:app_bus_boletos/screen/home/tabs/search_tab/search_tab.dart';
import 'package:app_bus_boletos/screen/home/tabs/wallet_tab/wallet_tab.dart';
import 'package:app_bus_boletos/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Hometab(),
    SearchTab(),
    WalletTab(),
    AccountTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Styles.primaryColor,
              Styles.onPrimary,
            ],
          ),
        ),
        child: Center(
          child: _widgetOptions[_selectedIndex],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 3),
        decoration: BoxDecoration(
          border: const Border(
            top: BorderSide(
              width: 1,
              color: Color.fromARGB(255, 176, 217, 255),
            ),
          ),
          color: Styles.onPrimary,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            gap: 8,
            haptic: true,
            color: Styles.secondary,
            activeColor: Styles.secondary,
            tabBackgroundColor: Styles.containerNavButton,
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
            padding: const EdgeInsets.all(10),
            tabs: const [
              GButton(
                icon: Iconsax.ticket,
                text: "Mi viaje",
              ),
              GButton(
                icon: Icons.search,
                text: "Buscar",
              ),
              GButton(
                icon: Icons.wallet,
                text: "Billetera",
              ),
              GButton(
                icon: Icons.person,
                text: "Cuenta",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
