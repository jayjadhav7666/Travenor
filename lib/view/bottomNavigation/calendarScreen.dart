import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Calendarscreen extends StatefulWidget {
  const Calendarscreen({super.key});

  @override
  State<Calendarscreen> createState() => _CalendarscreenState();
}

class _CalendarscreenState extends State<Calendarscreen> {
  ///Controller
  final List<Map<String, dynamic>> schedule = [
    {
      "photo": "asset/home/home_image1.jpg",
      "name": "Niladri Reservoir",
      "location": "Tekergat, Sunamgnj",
    },
    {
      "photo": "asset/details/details5.jpg",
      "name": "High Rech Park",
      "location": "Zeero Point, Sylhet",
    },
    {
      "photo": "asset/home/home_image2.jpg",
      "name": "Darma Reservoir",
      "location": "Darma, Kuningan",
    },
  ];

  List<String> days = [
    "W", // 6
    "T", // 7
    "F", // 8
    "S", // 9
    "S", // 10
    "M", // 11
    "T", // 12
    "W", // 13
    "T", // 14
    "F", // 15
    "S", // 16
    "S", // 17
    "M", // 18
    "T", // 19
    "W", // 20
    "T", // 21
    "F", // 22
    "S", // 23
    "S", // 24
    "M", // 25
    "T", // 26
  ];

  List<int> date = [
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        centerTitle: true,
        title: Text(
          "Schedule",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(27, 30, 40, 1),
          ),
        ).animate().fadeIn(duration: 500.ms).slideY(begin: -0.5),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
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
          ).animate().fadeIn(delay: 100.ms).slideY(begin: -0.5),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color.fromRGBO(255, 255, 255, 1),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 6),
                    spreadRadius: 0,
                    blurRadius: 20,
                    color: Color.fromRGBO(180, 188, 201, 0.16),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "6 May",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(27, 30, 40, 1),
                        ),
                      ).animate(onPlay: (controller) => controller.repeat(reverse: true)).shimmer(duration: 2.seconds),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 16,
                          color: Color.fromRGBO(27, 30, 40, 1),
                        ),
                      ).animate().scale(delay: 200.ms).shake(),
                      const SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                          color: Color.fromRGBO(27, 30, 40, 1),
                        ),
                      ).animate().scale(delay: 300.ms).shake(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: days.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Column(
                            children: [
                              Text(
                                days[index],
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(125, 132, 141, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "${date[index]}",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(27, 30, 40, 1),
                                ),
                              ),
                            ],
                          ),
                        ).animate(delay: (index * 50).ms).scale().fadeIn();
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "My Schedule",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
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
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: schedule.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 6),
                          spreadRadius: 0,
                          blurRadius: 16,
                          color: Color.fromRGBO(180, 188, 201, 0.12),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(
                                schedule[index]['photo'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month_outlined,
                                  size: 16,
                                  color: Color.fromRGBO(125, 132, 141, 1),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "26 August 2024",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              schedule[index]['name'],
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  size: 16,
                                  color: Color.fromRGBO(125, 132, 141, 1),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  schedule[index]['location'],
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 16,
                            color: Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ),
                      ],
                    ),
                  ).animate(delay: (index * 150).ms).fadeIn().slideY(begin: 0.5, curve: Curves.easeOutCubic);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
