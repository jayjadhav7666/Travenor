import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart' ;

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "asset/icon/edit.png",
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(27, 30, 40, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 96,
              width: 96,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 234, 223, 1),
                image: DecorationImage(
                  image: AssetImage("asset/profile.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ).animate().scale(curve: Curves.easeOutBack, duration: 500.ms),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Jayprakash",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(27, 30, 40, 1),
              ),
            ).animate().fadeIn(delay: 200.ms).slideY(begin: 0.5),
            const SizedBox(
              height: 5,
            ),
            Text(
              "codewithjp.dev@gmail.com",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(125, 132, 141, 1),
              ),
            ).animate().fadeIn(delay: 300.ms).slideY(begin: 0.5),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 78,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 6),
                    spreadRadius: 0,
                    blurRadius: 16,
                    color: Color.fromRGBO(189, 198, 211, 0.12),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 11,
                      right: 11,
                      top: 15,
                      bottom: 15,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Reward Points",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "360",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    width: 1.5,
                    color: Color.fromRGBO(247, 247, 249, 1),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 11,
                      right: 11,
                      top: 15,
                      bottom: 15,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Travel Trips",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "238",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    width: 1.5,
                    color: Color.fromRGBO(247, 247, 249, 1),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 11,
                      right: 11,
                      top: 15,
                      bottom: 15,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Bucket List",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "473",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ).animate().flipV(delay: 400.ms, duration: 600.ms, curve: Curves.easeOutCubic),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 15,
                bottom: 20,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 6),
                    blurRadius: 16,
                    spreadRadius: 0,
                    color: Color.fromRGBO(189, 198, 211, 0.12),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          const Icon(
                            Icons.bookmark_outline_outlined,
                            size: 20,
                            color: Color.fromRGBO(125, 132, 141, 1),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Bookmarked",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(27, 30, 40, 1),
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1.5,
                    color: Color.fromRGBO(247, 247, 249, 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            "asset/icon/previous_trip.png",
                            height: 20,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Previous Trips",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(27, 30, 40, 1),
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1.5,
                    color: Color.fromRGBO(247, 247, 249, 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            "asset/icon/settings.png",
                            height: 20,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Settings",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(27, 30, 40, 1),
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1.5,
                    color: Color.fromRGBO(247, 247, 249, 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            "asset/icon/version.png",
                            height: 20,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Version",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(27, 30, 40, 1),
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1.5,
                    color: Color.fromRGBO(247, 247, 249, 1),
                  ),
                ].animate(interval: 100.ms, delay: 500.ms).slideX(begin: -0.5).fadeIn(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
