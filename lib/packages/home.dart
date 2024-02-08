import 'package:flutter/material.dart';
import 'package:record/packages/widgets.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0), child: AppBar()),
      body: const Row(
        children: [
          DeviceItem(),
        ],
      ),
    );
  }
}
