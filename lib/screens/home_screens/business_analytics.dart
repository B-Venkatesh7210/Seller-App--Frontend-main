import 'package:flutter/material.dart';

class BusinessAnalytics extends StatefulWidget {
  const BusinessAnalytics({Key? key}) : super(key: key);

  @override
  _BusinessAnalyticsState createState() => _BusinessAnalyticsState();
}

class _BusinessAnalyticsState extends State<BusinessAnalytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Analytics'),
      ),
    );
  }
}