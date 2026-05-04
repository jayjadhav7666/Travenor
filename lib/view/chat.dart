import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ChatScreen extends StatefulWidget {
  final Map data;
  const ChatScreen({super.key, required this.data});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ///Controller
  final TextEditingController _searchController = TextEditingController();

  // Example messages
  List<Map<String, dynamic>> messages = [
    {"message": "Hello!", "isMe": true, "time": "10:32 AM", "status": "seen"},
    {
      "message":
          "Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...",
      "isMe": true,
      "time": "10:33 AM",
      "status": "seen"
    },
    {"message": "Hello!", "isMe": false, "time": "10:35 AM", "status": "seen"},
    {
      "message": "I’m very glab you like it👍",
      "isMe": false,
      "time": "10:36 AM",
      "status": "seen"
    },
    {
      "message": "We are arriving today at 01:45, will someone be at home?",
      "isMe": false,
      "time": "10:37 AM",
      "status": "seen"
    },
    {
      "message": "I will be at home",
      "isMe": true,
      "time": "10:38 AM",
      "status": "delivered"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        leadingWidth: 64,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 44,
              width: 44,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color.fromRGBO(27, 30, 40, 1),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                // You might want to implement call functionality here
              },
              child: Container(
                height: 44,
                width: 44,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: const Icon(
                  Icons.call_outlined,
                  color: Color.fromRGBO(27, 30, 40, 1),
                ),
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Column(
          children: [
            Text(
              widget.data['name'],
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(27, 30, 40, 1),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Active Now",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(25, 176, 0, 1),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 40,
          right: 20,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  final isMe = message['isMe'] as bool;
                  return Align(
                    alignment:
                        isMe ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isMe
                            ? const Color.fromRGBO(229, 244, 255, 1)
                            : const Color.fromRGBO(255, 255, 255, 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            message['message'] as String,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(27, 30, 40, 1),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                message['time'] as String,
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(125, 132, 141, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Icon(
                                Icons.done_all,
                                size: 12,
                                color: Color.fromRGBO(125, 132, 141, 1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ).animate(delay: (index * 150).ms).slideY(begin: 1, curve: Curves.easeOutCubic).fadeIn();
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _searchController,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Type your message',
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
                      suffixIcon: const Icon(
                        Icons.search_rounded,
                        size: 25,
                        color: Color.fromRGBO(125, 132, 141, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // You might want to implement send message functionality here
                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(13, 110, 253, 1),
                    ),
                    child: const Icon(
                      Icons.mic_outlined,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
