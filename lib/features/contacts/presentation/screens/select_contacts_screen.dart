import 'package:flutter/material.dart';

class SelectContactsScreen extends StatelessWidget {
  static const routeName = '/select-contacts';
  const SelectContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Contacts"),
      ),
    );
  }
}
