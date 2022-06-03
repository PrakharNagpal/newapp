import 'package:flutter/material.dart';

// ignore: camel_case_types
class First_Page extends StatefulWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  double _height = 100;
  void onClick() {
    if (_height == 300) {
      setState(() {
        _height = 100.0;
      });
    } else {
      setState(() {
        _height = 300;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgets = [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.red,
            ),
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      )
    ];

    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          InkWell(
            onTap: () {
              onClick();
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              height: _height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: _widgets,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

