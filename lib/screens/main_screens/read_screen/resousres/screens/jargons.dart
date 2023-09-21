import 'package:flutter/material.dart';
import 'package:marketfeed_clone/screens/main_screens/read_screen/resousres/widgets/customtab_container.dart';

class JargonsTab extends StatelessWidget {
  const JargonsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 4),
        itemBuilder: (context, index) => NewsStatusContainer(),
        itemCount: 10);
  }
}
