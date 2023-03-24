import 'package:fastbox_app/pages/login_or_register.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../intro_screens/intro_page_1.dart';
import '../intro_screens/intro_page_2.dart';
import 'auth_page.dart';
import 'login_page.dart';
import 'register_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

// controller to keep track of which page we're on
PageController _controller = PageController();

// keep track if we are on last page or not
bool onLastPage = false;

class _IntroPageState extends State<IntroPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          // page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
            ],
          ),

          // dot indicators
          Container(
              alignment: Alignment(0, 0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // skip
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(1);
                      },
                      child: Text('skip')),

                  // dot indicator
                  SmoothPageIndicator(controller: _controller, count: 2),

                  // next or done
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginPage();
                                },
                              ),
                            );
                          },
                          child: Text('done'),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Text('next'),
                        ),
                ],
              )),
        ],
      ),
    );
  }
}
