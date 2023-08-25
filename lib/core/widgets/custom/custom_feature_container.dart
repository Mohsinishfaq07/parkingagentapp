import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomFeatureContainer extends StatelessWidget {
  const CustomFeatureContainer({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(blurRadius: 1.0),
              ],
              border: Border.all(
                color: Colors.white, //<---- Insert Gradient Here
                width: 1,
              ),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(
              image,
              height: 10,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey, fontSize: 10),
        )
      ],
    );
  }
}
