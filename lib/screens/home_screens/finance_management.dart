import 'package:flutter/material.dart';

class FinanceManagement extends StatefulWidget {
  const FinanceManagement({Key? key}) : super(key: key);

  @override
  _FinanceManagementState createState() => _FinanceManagementState();
}

class _FinanceManagementState extends State<FinanceManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance Management'),
      ),
    );
  }
}