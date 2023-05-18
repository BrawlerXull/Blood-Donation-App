import 'package:blooddonation/components/bloodGroupDonorPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:blooddonation/main.dart';

class DonorPage extends StatefulWidget {
  const DonorPage({super.key});

  @override
  State<DonorPage> createState() => _DonorPageState();
}

class _DonorPageState extends State<DonorPage> {
  @override
  Widget build(BuildContext context) {
    var globalData = Provider.of<GlobalData>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press
              Navigator.pop(context);
            },
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 105, 105),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(globalData.data['blood'] ?? 'Name not available'),
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
              children: const [
                BloodGroupDonorPage(compText: "A"),
                SizedBox(
                  width: 30,
                ),
                BloodGroupDonorPage(compText: "B"),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                BloodGroupDonorPage(compText: "AB"),
                SizedBox(
                  width: 30,
                ),
                BloodGroupDonorPage(compText: "O"),
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
