// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/widgets/customtab_container.dart';

class EditorialTab extends StatelessWidget {
  const EditorialTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 4),
        itemBuilder: (context, index) => NewsStatusContainer(),
        itemCount: 10);
  }
}
