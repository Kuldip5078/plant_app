import 'package:flutter/material.dart';


import 'package:plant_application/auth/slider.dart';
import 'package:plant_application/utils/assets.dart';

import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  PageController controller = PageController();

  List<Widget> pages = [
    SliderPage(
        title: "Identyfy Plants",
        description:
            "You can identify the plants you don't know through your camera",
        image: Assets.onBoardImg1),
    SliderPage(
        title: "Learn Many Plants Species",
        description:
            "Let's learn about the many plant species that exist in this world",
        image: Assets.onBoardImg2),
    SliderPage(
        title: "Read Many Articles About Plant",
        description:
            "Let's learn more about beautiful plants and read many articles about plants and gardening",
        image: Assets.onBoardImg3)
  ];
  _onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
          itemCount: pages.length,
          scrollDirection: Axis.horizontal,
          controller: controller,
          onPageChanged: _onChanged,
          itemBuilder: (context, int index) {
            return pages[index];
          },
        ),
        const SizedBox(
          height: 40,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(pages.length, (index) {
              return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 10,
                  width: (index == currentPage) ? 10 : 10,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: (index == currentPage)
                          ? Colors.blue
                          : Colors.blue.withOpacity(0.5)));
            }),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              controller.nextPage(
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeInOutQuint);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 50,
              alignment: Alignment.center,
              width: 330,
              decoration: const BoxDecoration(
                  color: Color(0XFF2DDA93), shape: BoxShape.rectangle),
              child: (currentPage == (pages.length - 1))
                  ? GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                            (route) => false);
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))
                  : const Text(
                      "Next Page",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ]),
      ],
    ));
  }
}
