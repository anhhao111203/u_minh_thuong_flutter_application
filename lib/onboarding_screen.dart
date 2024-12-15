import 'package:flutter/material.dart';
import 'customized_objects/dot_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int currentOnBoardingScreen = 0;

  final List<String> images = [
    'assets/images/onboarding_image_1.jpg',
    'assets/images/onboarding_image_2.jpg',
    'assets/images/onboarding_image_3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView for the sliding content (image and text)
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                currentOnBoardingScreen = index;
              });
            },
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (index == 0)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to ',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'U Minh Thuong Biodiversity',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Explore the diverse plants and animals '
                                  'including the stunning species of U Minh Thuong Biodiversity',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      else if (index == 1)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Easy Search',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Search for specific species, including those found in U Minh Thuong Biodiversity, '
                                  'and get detailed information about their family group, genus, and more.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                            )
                          ],
                        )
                      else
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Conduct Your Research',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Dive deeper into the ecosystem of U Minh Thượng. Gather valuable data '
                                  'and learn about the flora and fauna to support your research and conservation efforts.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      SizedBox(height: 100)
                    ],
                  ),
                ),
              );
            },
          ),

          // Positioned fixed button and dot indicator at the bottom
          Positioned(
            bottom: 50, // Adjusted the distance from the bottom for the button
            left: 0,
            right: 0,
            child: Center(
              child: OutlinedButton(
                onPressed: () {
                  if (currentOnBoardingScreen < images.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 600),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.pushNamed(context, '/sign-in');
                  }
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(12),
                  minimumSize: Size(300, 50),
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ),

          // Positioned Dot Indicator fixed at the bottom
          Positioned(
            bottom: 20, // Adjusted the distance from the bottom for the dot indicator
            left: 0,
            right: 0,
            child: Center(
              child: DotIndicator(
                totalDots: images.length,
                selectedIndex: currentOnBoardingScreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
