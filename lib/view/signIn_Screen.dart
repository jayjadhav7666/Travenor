import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:travenor/view/bottomNavigation/bottomNavigation.dart';
import 'package:travenor/view/signUp_Screen.dart';
import 'package:url_launcher/url_launcher.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isShowPassword = true;
  Future<void>? launched;

  ///Controllers
  final TextEditingController _gmailController = TextEditingController(text: 'codewithjp.dev@gmail.com');
  final TextEditingController _passwordController = TextEditingController(text:'111111111');

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
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Sign in now",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(27, 30, 40, 1),
                  ),
                ).animate().fadeIn(duration: 500.ms).slideY(begin: -0.5),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Please sign in to continue our app",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(125, 132, 141, 1),
                  ),
                ).animate().fadeIn(delay: 100.ms).slideY(begin: -0.5),
                const SizedBox(
                  height: 30,
                ),
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
                      hintText: 'Email ',
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
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 56,
                  width: double.infinity,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _isShowPassword,
                    obscuringCharacter: '*',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Password ',
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
                ).animate().fadeIn(delay: 300.ms).slideX(begin: -0.5),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(13, 110, 253, 1),
                      ),
                    ),
                  ],
                ).animate().fadeIn(delay: 400.ms),
                const SizedBox(
                  height: 30,
                ),
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
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(13, 110, 253, 1),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ).animate().fadeIn(delay: 500.ms).scaleXY(begin: 0.8, end: 1.0, curve: Curves.easeOutBack),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(112, 123, 129, 1),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(13, 110, 253, 1),
                        ),
                      ),
                    ),
                  ],
                ).animate().fadeIn(delay: 600.ms),
                const SizedBox(
                  height: 10,
                ),
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
                ),
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
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        const link = "https://www.instagram.com";
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
                                AssetImage("asset/social_media/instagram.png"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        const link = "https://twitter.com";
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
                            image: AssetImage("asset/social_media/twitter.png"),
                          ),
                        ),
                      ),
                    )
                  ],
                ).animate().fadeIn(delay: 800.ms).slideY(begin: 0.5),
                const SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
