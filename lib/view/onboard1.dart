import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travenor/view/signIn_Screen.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      'imagePath': 'asset/onboarding/onboard1.png',
      'text1': 'Life is short and the ',
      'text2': 'world is ',
      'highlightText': 'wide',
      'description':
          'At Friends tours and travel, we customize reliable and trustworthy educational tours to destinations',
      'buttonText': 'Get Started',
    },
    {
      'imagePath': 'asset/onboarding/onboard2.png',
      'text1': 'It’s a big world out ',
      'text2': 'there go ',
      'highlightText': 'explore',
      'description':
          'To get the best of your adventure you just need to leave and go where you like. we are waiting for you',
      'buttonText': 'Next',
    },
    {
      'imagePath': 'asset/onboarding/onboard3.png',
      'text1': 'People don’t take trips, ',
      'text2': 'trips take ',
      'highlightText': 'people',
      'description':
          'To get the best of your adventure you just need to leave and go where you like. we are waiting for you',
      'buttonText': "Next",
    },
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onButtonPressed() {
    if (_currentIndex < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        ),
      );
    }
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 7.0,
      width: isActive ? 35.0 : 13.0,
      decoration: BoxDecoration(
        color: isActive
            ? const Color.fromRGBO(13, 110, 253, 1)
            : const Color.fromRGBO(202, 234, 255, 1),
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: _onboardingData.length,
              itemBuilder: (context, index) {
                return OnboardPage(
                  pageIndex: index,
                  imagePath: _onboardingData[index]['imagePath']!,
                  text1: _onboardingData[index]['text1']!,
                  text2: _onboardingData[index]['text2']!,
                  highlightText: _onboardingData[index]['highlightText']!,
                  description: _onboardingData[index]['description']!,
                  buttonText: _onboardingData[index]['buttonText']!,
                  onButtonPressed: _onButtonPressed,
                  isLastPage: index == _onboardingData.length - 1,
                  indicator: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _onboardingData.length,
                      (indicatorIndex) =>
                          _buildIndicator(indicatorIndex == _currentIndex),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardPage extends StatelessWidget {
  final int pageIndex;
  final String imagePath;
  final String text1;
  final String text2;
  final String highlightText;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;
  final bool isLastPage;
  final Widget indicator;

  const OnboardPage({
    super.key,
    required this.pageIndex,
    required this.imagePath,
    required this.text1,
    required this.text2,
    required this.highlightText,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
    required this.isLastPage,
    required this.indicator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 444,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Builder(
                    builder: (context) {
                      Widget img = Image.asset(imagePath, fit: BoxFit.cover);
                      if (pageIndex == 0) {
                        return img.animate(onPlay: (controller) => controller.repeat(reverse: true))
                            .slideX(begin: -0.05, end: 0.05, duration: 3.seconds, curve: Curves.easeInOut)
                            .rotate(begin: -0.01, end: 0.01, duration: 2.seconds);
                      } else if (pageIndex == 1) {
                        return img.animate()
                            .slideY(begin: 1, end: 0, duration: 800.ms, curve: Curves.easeOut)
                            .animate(onPlay: (controller) => controller.repeat(reverse: true))
                            .rotate(begin: -0.02, end: 0.02, duration: 2.seconds);
                      } else if (pageIndex == 2) {
                        return img.animate(onPlay: (controller) => controller.repeat(reverse: true))
                            .slideX(begin: 0, end: -0.1, duration: 5.seconds);
                      }
                      return img;
                    },
                  ),
                ),
              ),
              Positioned(
                top: 35,
                right: 22,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(202, 234, 255, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (pageIndex == 0)
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: text1.split(' ').map((word) {
                          return Text("$word ", style: GoogleFonts.aclonica(fontSize: 24, fontWeight: FontWeight.w400, color: const Color.fromRGBO(27, 30, 40, 1)));
                        }).toList().animate(interval: 200.ms).fadeIn(duration: 500.ms),
                      )
                    else
                      Text(
                        text1,
                        style: GoogleFonts.aclonica(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(27, 30, 40, 1),
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (pageIndex == 0)
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: text2.split(' ').map((word) {
                              return Text("$word ", style: GoogleFonts.aclonica(fontSize: 24, fontWeight: FontWeight.w400, color: const Color.fromRGBO(27, 30, 40, 1)));
                            }).toList().animate(interval: 200.ms, delay: 600.ms).fadeIn(duration: 500.ms),
                          )
                        else
                          Text(
                            text2,
                            style: GoogleFonts.aclonica(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(27, 30, 40, 1),
                            ),
                          ),
                        Column(
                          children: [
                            const SizedBox(height: 10),
                            if (pageIndex == 1)
                              AnimatedTextKit(
                                animatedTexts: [
                                  TyperAnimatedText(
                                    highlightText,
                                    textStyle: GoogleFonts.aclonica(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(255, 112, 41, 1),
                                    ),
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                ],
                                isRepeatingAnimation: false,
                              )
                            else if (pageIndex == 0)
                              Text(
                                highlightText,
                                style: GoogleFonts.aclonica(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(255, 112, 41, 1),
                                ),
                              ).animate(onPlay: (controller) => controller.repeat(reverse: true)).shake(duration: 1.seconds).tint(color: Colors.orange)
                            else if (pageIndex == 2)
                              Text(
                                highlightText,
                                style: GoogleFonts.aclonica(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(255, 112, 41, 1),
                                ),
                              ).animate(onPlay: (controller) => controller.repeat(reverse: true)).tint(color: Colors.orange, duration: 500.ms)
                            else
                              Text(
                                highlightText,
                                style: GoogleFonts.aclonica(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(255, 112, 41, 1),
                                ),
                              ),
                            Image.asset("asset/onboarding/vector.png"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 303,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(125, 132, 141, 1),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              indicator.animate().scale(duration: 300.ms),

            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: onButtonPressed,
            child: Builder(
              builder: (context) {
                Widget btn = Container(
                  height: 56,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(13, 110, 253, 1),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Center(
                    child: Text(
                      buttonText,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                );

                if (pageIndex == 0) {
                  return btn.animate(onPlay: (controller) => controller.repeat(reverse: true)).shimmer(duration: 1.seconds).scaleXY(begin: 1.0, end: 1.05);
                } else if (pageIndex == 1) {
                  return btn.animate().slideY(begin: 1, duration: 500.ms, curve: Curves.easeOut);
                } else if (pageIndex == 2) {
                  return btn.animate(onPlay: (controller) => controller.repeat(reverse: true)).scaleXY(begin: 1.0, end: 1.05, duration: 500.ms).shake();
                }
                return btn;
              },
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
