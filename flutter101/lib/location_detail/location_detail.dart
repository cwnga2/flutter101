import 'package:flutter/material.dart';
import './image_banner.dart';
import './text_section.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner("assets/images/usa.jpeg"),
            TextSection("summary",
                "adfklhlajsdlj kjal djfljoiajdo f oiu adfoi uadfklhlajsdlj kjal djfljoiajdo f oiu adfoi uadfklhlajsdlj kjal djfljoiajdo f oiu adfoi uadfklhlajsdlj kjal djfljoiajdo f oiu adfoi uadfklhlajsdlj kjal djfljoiajdo f oiu adfoi uadfklhlajsdlj kjal djfljoiajdo f oiu adfoi uadfklhlajsdlj kjal djfljoiajdo f oiu adfoi uadfklhlajsdlj kjal djfljoiajdo f oiu adfoi uadfklhlajsdlj kjal djfljoiajdo f oiu adfoi uadfklhlajsdlj kjal djfljoiajdo f oiu adfoi u"),
          ],
        ));
  }
}
