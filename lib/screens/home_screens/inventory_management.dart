import 'package:flutter/material.dart';

class InventoryManagement extends StatefulWidget {
  const InventoryManagement({Key? key}) : super(key: key);

  @override
  _InventoryManagementState createState() => _InventoryManagementState();
}

class _InventoryManagementState extends State<InventoryManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory Management'),
      ),
    );
  }
}