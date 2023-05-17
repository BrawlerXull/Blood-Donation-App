import 'package:flutter/material.dart';

class DonorPage extends StatefulWidget {
  const DonorPage({super.key});

  @override
  State<DonorPage> createState() => _DonorPageState();
}

class _DonorPageState extends State<DonorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 105, 105),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/pngegg-4.png',
              height: 300,
            ),
            const Center(
              child: Text(
                "Select the blood group",
                style: TextStyle(
                    fontSize: 37,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromRGBO(231, 211, 183, 1.0),
                  ),
                  child: const Center(
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 37),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromRGBO(231, 211, 183, 1.0),
                  ),
                  child: const Center(
                    child: Text(
                      "B",
                      style: TextStyle(fontSize: 37),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 180,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color.fromRGBO(231, 211, 183, 1.0),
                    ),
                    child: const Center(
                      child: Text(
                        "O",
                        style: TextStyle(fontSize: 37),
                      ),
                    )),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromRGBO(231, 211, 183, 1.0),
                  ),
                  child: const Center(
                    child: Text(
                      "AB",
                      style: TextStyle(fontSize: 37),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
