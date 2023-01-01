import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySmartDevices extends StatelessWidget {
  const MySmartDevices({
    super.key,
    required this.imagePath,
    required this.powerOn,
    required this.name,
    required this.onChanged,
  });

  final String imagePath;
  final bool powerOn;
  final String name;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: powerOn ? Colors.grey[900] : Colors.grey[200],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imagePath,
                height: 70,
                color: powerOn ? Colors.grey[200] : Colors.grey[900],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    name,
                    style: TextStyle(
                        color: powerOn ? Colors.grey[200] : Colors.grey[900],
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
                  Transform.rotate(
                      angle: pi / 2,
                      child:
                          CupertinoSwitch(value: powerOn, onChanged: onChanged))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
