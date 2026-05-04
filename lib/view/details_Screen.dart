import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travenor/view/view.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DetailsScreen extends StatefulWidget {
  final Map<String, dynamic> obj;
  const DetailsScreen({super.key, required this.obj});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool bookmark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 480,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(widget.obj['image'], fit: BoxFit.cover)
                      .animate(onPlay: (controller) => controller.repeat(reverse: true))
                      .scaleXY(begin: 1.0, end: 1.1, duration: 10.seconds),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(80, 30, 40, 20),
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  size: 22,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "Details",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bookmark = !bookmark;
                              });
                            },
                            child: Container(
                              height: 45,
                              width: 45,
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
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 461,
                width: double.infinity,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 36,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(125, 132, 141, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.obj['name'],
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(27, 30, 40, 1)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.obj['location'],
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(125, 132, 141, 1),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 48,
                          width: 48,
                          margin: const EdgeInsets.only(
                            left: 30,
                          ),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("asset/home/book_person3.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
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
                          widget.obj['mainlocation'],
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                          ),
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
                        Text(
                          "${widget.obj['rating']}",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(27, 30, 40, 1)),
                        ),
                        Text(
                          "(${widget.obj['ratingPerson']})",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "\$${widget.obj['buy/person']}/",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(13, 110, 253, 1),
                          ),
                        ).animate(onPlay: (controller) => controller.repeat(reverse: true)).fadeOut(duration: 500.ms).fadeIn(),
                        Text(
                          "Person",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44,
                          width: 44,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage("asset/details/details1.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage("asset/details/details2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage("asset/details/details3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            image: DecorationImage(
                              image: AssetImage("asset/details/details4.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 44,
                            width: 44,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  "asset/details/details5.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "+16",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ].animate(interval: 100.ms).fadeIn().slideX(begin: 0.2),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "About Destination",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(27, 30, 40, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        widget.obj['about'],
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(125, 132, 141, 1),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ViewScreen(
                              data: widget.obj,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                          color: Color.fromRGBO(13, 110, 253, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Book Now",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ).animate(onPlay: (controller) => controller.repeat(reverse: true)).shimmer(duration: 1.seconds).scaleXY(begin: 1.0, end: 1.1),
                    ),
                  ],
                ),
              ).animate().slideY(begin: 1, curve: Curves.easeOutCubic, duration: 500.ms),
            ],
          ),
        ],
      ),
    );
  }
}
