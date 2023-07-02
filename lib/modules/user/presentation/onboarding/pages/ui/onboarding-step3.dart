import 'package:flutter/material.dart';

class OnBoardingStep3 extends StatelessWidget {
  const OnBoardingStep3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       width:MediaQuery.of(context).size.width-48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.grey.shade300,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: const SizedBox(
        height: 280,
        child: Center(
            child: Text(
          "Page 3",
          style: TextStyle(color: Colors.indigo),
        )),
      ),
    );
  }
}