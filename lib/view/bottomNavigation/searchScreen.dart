import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  ///Controller
  final TextEditingController _searchController = TextEditingController();

  List<Map<String, dynamic>> places = [
    {
      "image": "asset/search/image1.png",
      "name": "Niladri Reservoir",
      "location": "Tekergat, Sunamgnj",
      "person": 894,
    },
    {
      "image": "asset/search/image2.png",
      "name": "Casalas Tirtugas",
      "location": "Av Damero, Mexico",
      "person": 894,
    },
    {
      "image": "asset/search/image3.png",
      "name": "Aonang Villa",
      "location": "Bastola, Islampur",
      "person": 761,
    },
    {
      "image": "asset/search/image4.png",
      "name": "Rangauti Resort",
      "location": "Sylhet, Airport Road",
      "person": 857,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "Cancel",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(13, 110, 253, 1),
                ),
              ),
            ),
          ).animate().slideX(begin: 1, delay: 200.ms),
        ],
        title: Text(
          "Search",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(27, 30, 40, 1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 48,
              width: double.infinity,
              child: TextFormField(
                controller: _searchController,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(27, 30, 40, 1),
                ),
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Search Places',
                  hintStyle: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(125, 132, 141, 1),
                  ),
                  fillColor: const Color.fromRGBO(255, 255, 255, 1),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    size: 18,
                    color: Color.fromRGBO(125, 132, 141, 1),
                  ),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(
                        height: 24,
                        child: VerticalDivider(
                          width: 1,
                          color: Color.fromRGBO(125, 132, 141, 1),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.mic,
                          color: Color.fromRGBO(125, 132, 141, 1),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ).animate().scaleX(begin: 0.5, curve: Curves.easeOutBack, alignment: Alignment.centerLeft),
            const SizedBox(
              height: 30,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  "Search Places",
                  textStyle: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(27, 30, 40, 1),
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              isRepeatingAnimation: false,
              displayFullTextOnTap: true,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 230,
                ),
                itemCount: places.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(12),
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
                            color: Color.fromRGBO(180, 188, 201, 0.12),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100, // Adjust as needed
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  places[index]['image'],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 130,
                            child: Text(
                              places[index]['name'],
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                              ),
                            ),
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
                              SizedBox(
                                width: 110,
                                child: Text(
                                  places[index]['location'],
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ ${places[index]['person']}/",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(13, 110, 253, 1),
                                ),
                              ),
                              Text(
                                "Person",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(125, 132, 141, 1),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ).animate(delay: (index * 150).ms).scale(curve: Curves.easeOutBack).fadeIn(),
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
