import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;
  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        this._assetPath,
        fit: BoxFit.fill,
      ),
      decoration: BoxDecoration(color: Colors.red),
      constraints: BoxConstraints.expand(height: 200),
    );
  }
}
