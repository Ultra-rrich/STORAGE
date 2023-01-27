import 'package:flutter/material.dart';
import 'package:teamapp/pages/team_folder.dart';

void main() {
  runApp(const TeamApp());
}

class TeamApp extends StatelessWidget {
  const TeamApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloud files',
      home: TeamFolderPage()
    );
  }
}

