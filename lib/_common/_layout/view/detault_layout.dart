import 'package:flutter/material.dart';

class DetaultLayout extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  final String title;
  final bool? isBackButtonEnabled;

  const DetaultLayout({
    super.key,
    required this.child,
    required this.title,
    this.isBackButtonEnabled = false,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:
            isBackButtonEnabled ?? false,
        centerTitle: false,
        // backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: child,

      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
