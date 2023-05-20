import 'package:blooddonation/screens/entryPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ThankYouPage extends StatefulWidget {
  const ThankYouPage({super.key});

  @override
  State<ThankYouPage> createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 105, 105),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // null;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EntryPage()),
            );
          },
          child: Image.asset('assets/thanku.png'),
        ),
      ),
    );
  }
}
