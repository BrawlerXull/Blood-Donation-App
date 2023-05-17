import 'package:blooddonation/screens/donorPage.dart';
import 'package:flutter/material.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 105, 105),
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
          const SizedBox(
            height: 190,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DonorPage()),
                  );
                },
                child: Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromRGBO(231, 211, 183, 1.0),
                  ),
                  child: const Center(
                    child: Text(
                      "Donor",
                      style: TextStyle(fontSize: 37),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
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
                    "Reviever",
                    style: TextStyle(fontSize: 37),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
