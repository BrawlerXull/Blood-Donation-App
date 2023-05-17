import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BloodGroupDonorPage extends StatelessWidget {
  final String compText;

  const BloodGroupDonorPage({
    required this.compText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color.fromRGBO(231, 211, 183, 1.0),
      ),
      child: Center(
        child: Text(
          compText,
          style: TextStyle(fontSize: 37),
        ),
      ),
    );
  }
}
