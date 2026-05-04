import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travenor/view/details_Screen.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool bookmark = false;
  List<Map<String, dynamic>> destrinations = [
    {
      "image": "asset/home/home_image1.jpg",
      "name": "Niladri Reservoir",
      "location": "Tekergat, Sunamgnj",
      "mainlocation": "Tekergat",
      "rating": 4.7,
      "ratingPerson": 2498,
      "buy/person": 59,
      "about":
          "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Have you ever been on holiday to the Greek ETC... Read More",
    },
    {
      "image": "asset/home/home_image2.jpg",
      "name": "Darma Reservoir",
      "location": "Darma, Kuningan",
      "mainlocation": "Darma",
      "rating": 4.9,
      "ratingPerson": 2598,
      "buy/person": 61,
      "about":
          "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Have you ever been on holiday to the Greek ETC... Read More",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        leadingWidth: 180,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 45,
            padding: const EdgeInsets.all(7),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: 37,
                  width: 37,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(255, 234, 223, 1),
                    image: DecorationImage(
                      image: AssetImage("asset/profile.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Jayprakash",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(27, 30, 40, 1),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
        ).animate().fadeIn(duration: 500.ms).slideY(begin: -1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 44,
                width: 44,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    "asset/icon/notifications.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ).animate().fadeIn(duration: 500.ms).slideY(begin: -1),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                right: 20,
              ),
              child: SizedBox(
                width: 307,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      children: [
                        Text(
                          "Explore the ",
                          style: GoogleFonts.poppins(
                            fontSize: 38,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                          ),
                        ),
                        Text(
                          "Beautiful ",
                          style: GoogleFonts.poppins(
                            fontSize: 38,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                          ),
                        ),
                        Text(
                          "world!",
                          style: GoogleFonts.poppins(
                            fontSize: 38,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(255, 112, 41, 1),
                          ),
                        ),
                      ].animate(interval: 200.ms).fadeIn().slideY(begin: 0.5),
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Image.asset("asset/onboarding/vector.png"),
                        const SizedBox(
                          width: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "Best Destination",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "View all",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(13, 110, 253, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 390,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              DetailsScreen(obj: destrinations[index]),
                        ),
                      );
                    },
                    child: Container(
                      width: 268,
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 10,
                      ),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(24),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 6),
                            spreadRadius: 0,
                            blurRadius: 16,
                            color: Color.fromRGBO(180, 188, 201, 0.12),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 240,
                            height: 286,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  destrinations[index]['image'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      bookmark = !bookmark;
                                    });
                                  },
                                  child: Container(
                                    height: 37,
                                    width: 37,
                                    margin: const EdgeInsets.only(
                                      top: 15,
                                      right: 15,
                                    ),
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(80, 30, 40, 20),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        bookmark
                                            ? Icons.bookmark_rounded
                                            : Icons.bookmark_border_outlined,
                                        size: 22,
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Text(
                                destrinations[index]['name'],
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(27, 30, 40, 1)),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.star_rounded,
                                size: 25,
                                color: Color.fromRGBO(255, 211, 54, 1),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              TweenAnimationBuilder<double>(
                                tween: Tween<double>(begin: 0, end: (destrinations[index]['rating'] as num).toDouble()),
                                duration: const Duration(seconds: 2),
                                builder: (context, value, child) {
                                  return Text(
                                    value.toStringAsFixed(1),
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(27, 30, 40, 1)),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                size: 15,
                                color: Color.fromRGBO(125, 132, 141, 1),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                destrinations[index]['location'],
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(125, 132, 141, 1),
                                ),
                              ),
                              const Spacer(),
                              Stack(
                                children: [
                                  Container(
                                    height: 26,
                                    width: 26,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "asset/home/book_person1.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 26,
                                    width: 26,
                                    margin: const EdgeInsets.only(
                                      left: 15,
                                    ),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/home/book_person2.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 26,
                                    width: 26,
                                    margin: const EdgeInsets.only(
                                      left: 30,
                                    ),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "asset/home/book_person3.png"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 26,
                                    width: 26,
                                    margin: const EdgeInsets.only(
                                      left: 45,
                                    ),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(229, 244, 255, 1),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "+50",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: const Color.fromRGBO(
                                              27, 30, 40, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ).animate(delay: (index * 200).ms).slideX(begin: 1.0, curve: Curves.easeOutCubic),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
