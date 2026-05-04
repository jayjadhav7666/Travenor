import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travenor/view/bottomNavigation/calendarScreen.dart';
import 'package:travenor/view/bottomNavigation/homeScreen.dart';
import 'package:travenor/view/bottomNavigation/message_screen.dart';
import 'package:travenor/view/bottomNavigation/profileScreen.dart';
import 'package:travenor/view/bottomNavigation/searchScreen.dart';
import 'package:flutter_animate/flutter_animate.dart';
class BottomnavigationScreen extends StatefulWidget {
  const BottomnavigationScreen({super.key});

  @override
  State<BottomnavigationScreen> createState() => _BottomnavigationScreenState();
}

class _BottomnavigationScreenState extends State<BottomnavigationScreen> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const Homescreen(),
    const Calendarscreen(),
    const Searchscreen(),
    const MessageScreen(),
    const Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 110,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          unselectedItemColor: const Color.fromRGBO(125, 132, 141, 1),
          selectedItemColor: const Color.fromRGBO(13, 110, 253, 1),
          selectedLabelStyle: GoogleFonts.poppins(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(13, 110, 253, 1),
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(125, 132, 141, 1),
          ),
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home_outlined,
                size: 24,
              ).animate().scale(delay: 100.ms).shake(),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.calendar_month_outlined,
                size: 24,
              ).animate().scale(delay: 200.ms).shake(),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(13, 110, 253, 1),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 8),
                      spreadRadius: 0,
                      blurRadius: 19,
                      color: Color.fromRGBO(13, 110, 253, 0.17),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.search_outlined,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 30,
                ),
              ).animate().scale(delay: 300.ms).shake(),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.message_outlined,
                size: 24,
              ).animate().scale(delay: 400.ms).shake(),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.person_outlined,
                size: 24,
              ).animate().scale(delay: 500.ms).shake(),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
