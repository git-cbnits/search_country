import 'package:flutter/material.dart';


class MaterialFrameWrapper extends StatelessWidget {
  final Widget child;
  final bool usingLocalization;

  const MaterialFrameWrapper(
      {Key? key, required this.child, this.usingLocalization = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _buildHome(),
    );
  }

  Widget _buildHome() {
    return MediaQuery(
      data: const MediaQueryData(size: Size(480, 900)),
      child: child,
    );
  }
}
