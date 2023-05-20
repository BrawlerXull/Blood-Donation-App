import 'package:blooddonation/screens/entryPage.dart';
import 'package:blooddonation/screens/pastDiseasesPage.dart';
import 'package:flutter/material.dart';
import 'package:blooddonation/components/bloodGroupDonorPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:blooddonation/main.dart';

class BloodGroupDonorPage extends StatefulWidget {
  final String compText;

  const BloodGroupDonorPage({
    required this.compText,
  });

  @override
  _BloodGroupDonorPageState createState() => _BloodGroupDonorPageState();
}

class _BloodGroupDonorPageState extends State<BloodGroupDonorPage> {
  @override
  Widget build(BuildContext context) {
    var globalData = Provider.of<GlobalData>(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          globalData.setPerson(blood: widget.compText);
          print(globalData.person.blood.toString());
        });
        print(widget.compText);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PastDiseasesPage()),
        );
      },
      child: Container(
        width: 180,
        height: 80,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(231, 211, 183, 1.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            widget.compText,
            style: TextStyle(fontSize: 37),
          ),
        ),
      ),
    );
  }
}
