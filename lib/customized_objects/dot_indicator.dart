import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final int totalDots;
  final int selectedIndex;

  const DotIndicator({super.key, required this.totalDots, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalDots, (index) {
        // Check if the current dot is selected
        bool isSelected = index == selectedIndex;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Container(
            width: isSelected ? 150 : 50,
            height: 4,
            decoration: BoxDecoration(
              color: isSelected ? Colors.green : Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        );
      }),
    );
  }
}
