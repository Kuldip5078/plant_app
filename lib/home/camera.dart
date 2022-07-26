import 'package:flutter/material.dart';


class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // ignore: sized_box_for_whitespace
            child: Container(
                width: double.infinity,
                height: double.infinity,
                child: const Image(
                  image: AssetImage(
                    "asset2/Camera2.png",
                  ),
                  fit: BoxFit.cover,
                )
                ),
          ),
        ],
      ),
    );
  }
}
