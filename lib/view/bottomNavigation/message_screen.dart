import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travenor/view/chat.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  ///Controller
  final TextEditingController _searchController = TextEditingController();

  List<Map<String, dynamic>> chatList = [
    {
      "photo": "asset/message/chat1.png",
      "name": "Sajib  Rahman",
      "message": "Hi, John! 👋 How are you doing?",
      "timing": "09:46",
      'seen': false,
    },
    {
      "photo": "asset/message/chat2.png",
      "name": "Adom Shafi",
      "message": "Typing...",
      "timing": "08:42",
      'seen': false,
    },
    {
      "photo": "asset/message/chat3.png",
      "name": "HR Rumen",
      "message": "You: Cool! ☺️ Let’s meet at 18:00 near the traveling!",
      "timing": "Yesterday",
      'seen': false,
    },
    {
      "photo": "asset/message/chat4.png",
      "name": "Anjelina",
      "message": "You: Hey, will you come to the party on Saturday?",
      "timing": "07:56",
      'seen': false,
    },
    {
      "photo": "asset/message/chat5.png",
      "name": "Alexa Shorna",
      "message": "Thank you for coming! Your or...",
      "timing": "05:52",
      'seen': false,
    },
  ];

  List<Color> colorList = [
    const Color.fromRGBO(255, 211, 54, 1),
    const Color.fromRGBO(125, 132, 141, 1),
    const Color.fromRGBO(25, 176, 0, 1),
    const Color.fromRGBO(254, 35, 82, 1),
    const Color.fromRGBO(25, 176, 0, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        centerTitle: true,
        title: Text(
          "Messages",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(27, 30, 40, 1),
          ),
        ).animate().fadeIn(duration: 500.ms).slideY(begin: -0.5),
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
                child: const Center(
                  child: Icon(
                    Icons.more_vert,
                  ),
                ),
              ),
            ),
          ).animate().fadeIn(delay: 100.ms).slideY(begin: -0.5),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Messages",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(27, 30, 40, 1),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    "asset/icon/message_edit.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
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
                  hintText: 'Search for chats & messages',
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
                    size: 25,
                    color: Color.fromRGBO(125, 132, 141, 1),
                  ),
                ),
              ),
            ).animate().slideY(begin: -0.5, duration: 400.ms, curve: Curves.easeOutCubic).fadeIn(),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: chatList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(
                            data: chatList[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // User Avatar
                          Container(
                            height: 57,
                            width: 55,
                            alignment: Alignment.bottomRight,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(chatList[index]['photo']),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Container(
                              height: 16,
                              width: 16,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Container(
                                height: 13,
                                width: 13,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colorList[index],
                                ),
                              ).animate(onPlay: (controller) => controller.repeat(reverse: true)).shimmer(duration: 1.seconds).scaleXY(begin: 1.0, end: 1.1),
                            ),
                          ),
                          const SizedBox(width: 10),
                          // Chat Details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // User Name and Status
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      chatList[index]['name'],
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            const Color.fromRGBO(27, 30, 40, 1),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          (index == 0 || index == 3)
                                              ? Icons.done
                                              : Icons.done_all,
                                          size: 16,
                                          color: (index == 1 || index == 4)
                                              ? const Color.fromRGBO(
                                                  25, 176, 0, 1)
                                              : const Color.fromRGBO(
                                                  125, 132, 141, 1),
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          chatList[index]['timing'],
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromRGBO(
                                                125, 132, 141, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                // Last Message
                                Text(
                                  chatList[index]['message'],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: (index == 1)
                                        ? const Color.fromRGBO(13, 110, 253, 1)
                                        : const Color.fromRGBO(
                                            125, 132, 141, 1),
                                  ),
                                ).animate(delay: ((index * 150) + 200).ms).fadeIn(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ).animate(delay: (index * 150).ms).slideX(begin: -0.5, curve: Curves.easeOutCubic).fadeIn(),
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
