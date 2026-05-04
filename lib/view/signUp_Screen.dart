import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:travenor/view/bottomNavigation/bottomNavigation.dart';
import 'package:url_launcher/url_launcher.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Future<void>? launched;
  bool _isShowPassword = true;

  ///Controller
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _gmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _launchUrlInApp(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Text(
                  "Sign Up now",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(27, 30, 40, 1),
                  ),
                ).animate().fadeIn(duration: 500.ms).slideY(begin: -0.5),
                const SizedBox(height: 15),
                Text(
                  "Please fill the details and create account",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(125, 132, 141, 1),
                  ),
                ).animate().fadeIn(delay: 100.ms).slideY(begin: -0.5),
                const SizedBox(height: 30),
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: TextFormField(
                    controller: _userNameController,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'UserName',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1),
                      ),
                      fillColor: const Color.fromRGBO(247, 247, 249, 1),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ).animate().fadeIn(delay: 200.ms).slideX(begin: -0.5),
                const SizedBox(height: 25),
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: TextFormField(
                    controller: _gmailController,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Email',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1),
                      ),
                      fillColor: const Color.fromRGBO(247, 247, 249, 1),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ).animate().fadeIn(delay: 300.ms).slideX(begin: -0.5),
                const SizedBox(height: 25),
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _isShowPassword,
                    obscuringCharacter: '*', // Ensures password is obscured
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1),
                      ),
                      fillColor: const Color.fromRGBO(247, 247, 249, 1),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(14),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isShowPassword = !_isShowPassword;
                          });
                        },
                        icon: Icon(
                          _isShowPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: const Color.fromRGBO(125, 132, 141, 1),
                        ),
                        iconSize: 20,
                      ),
                    ),
                  ),
                ).animate().fadeIn(delay: 400.ms).slideX(begin: -0.5),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Password must be 8 characters",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1),
                      ),
                    ),
                  ],
                ).animate().fadeIn(delay: 500.ms),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const BottomnavigationScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(13, 110, 253, 1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ).animate().fadeIn(delay: 600.ms).scaleXY(begin: 0.8, end: 1.0, curve: Curves.easeOutBack),
                const SizedBox(height: 30),

                Text(
                  "Or connect",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(112, 123, 129, 1),
                  ),
                ).animate().fadeIn(delay: 700.ms),
                const SizedBox(
                  height: 50,
                ), // Add some spacing before social media buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        const link = "https://www.facebook.com";

                        setState(() {
                          launched = _launchUrlInApp(Uri.parse(link));
                        });
                      },
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image:
                                AssetImage("asset/social_media/facebook.png"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        const link = "https://www.instagram.com";
                        launchUrl(
                          Uri.parse(link),
                          mode: LaunchMode.inAppWebView,
                        );
                      },
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image:
                                AssetImage("asset/social_media/instagram.png"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    GestureDetector(
                      onTap: () {
                        const link = "https://www.twitter.com";
                        launchUrl(
                          Uri.parse(link),
                          mode: LaunchMode.inAppWebView,
                        );
                      },
                      child: Container(
                        height: 44,
                        width: 44,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("asset/social_media/twitter.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).animate().fadeIn(delay: 800.ms).slideY(begin: 0.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
