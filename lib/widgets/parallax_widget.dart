import 'package:flutter/material.dart';

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    super.key,
    required this.top,
    required this.asset,
  });

  final double top;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: -45,
      child: SizedBox(
        height: 550,
        width: 1000,
        child: Image.asset("assets/$asset.png", fit: BoxFit.cover),
      ),
    );
  }
}
