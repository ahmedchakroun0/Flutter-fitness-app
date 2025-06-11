import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            children: [
              _buildPageIndicator(
                text: 'Meet your coatch, \nstart your journey',
                images: 'assets/OnboardingScreen1.jpg',
              ),
              _buildPageIndicator(
                text: 'Create a workout plan \n to stay fit',
                images: 'assets/OnboardingScreen2.jpg',
              ),
              _buildPageIndicator(
                text: 'Actions are the \nkey to all success',
                images: 'assets/OnboardingScreen3.jpg',
              ),
            ],
          ),
          isLastPage
              ? const SizedBox.shrink()
              : Positioned(
                  top: size.height * 0.05,
                  right: size.width * 0.05,
                  child: TextButton(
                    onPressed: () {
                      controller.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: const Text(
                      'skip',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),

          isLastPage
              ? Positioned(
                  bottom: size.height * 0.09,
                  left: size.width * 0.2,
                  right: size.width * 0.2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/gender");
                          },
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.02),
                        const Icon(Icons.arrow_forward, color: Colors.black),
                      ],
                    ),
                  ),
                )
              : SizedBox.shrink(),

          Positioned(
            bottom: size.height * 0.03,
            left: size.width * 0.4,

            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.yellow,
                dotHeight: 10,
                dotWidth: 10,
                spacing: 8.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator({required String text, required String images}) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          images,
          height: size.height * 0.6,
          width: size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
            height: size.height * 0.4,
            width: size.width,
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
