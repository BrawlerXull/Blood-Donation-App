import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 105, 105),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/pngegg-2.png',
                height: 300,
              ),
            ),
            SizedBox(
              height: 190,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 180,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(231, 211, 183, 1.0),
                    ),
                    child: Center(
                      child: const Text(
                        "Donor",
                        style: TextStyle(fontSize: 37),
                      ),
                    )),
                SizedBox(
                  width: 40,
                ),
                Container(
                    width: 180,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color.fromRGBO(231, 211, 183, 1.0),
                    ),
                    child: Center(
                      child: const Text(
                        "Reviever",
                        style: TextStyle(fontSize: 37),
                      ),
                    )),
              ],
            )
          ],
        ));
  }
}
