import 'package:flutter/material.dart';
import 'package:management_ui/constants/colors.dart';

class Task {
  const Task(
      {required this.title,
      this.icon,
      this.theme,
      required this.left,
      required this.done});
  final String title;
  final IconData? icon;
  final Color? theme;
  final String left;
  final String done;
}

const List<Task> task = <Task>[
  const Task(
      title: 'Personal',
      icon: Icons.person,
      theme: kYellow,
      left: '3 left',
      done: '1 done'),
  const Task(
      title: 'Work',
      icon: Icons.work,
      theme: kRed,
      left: '2 left',
      done: '8 done'),
  const Task(
      title: 'Health',
      icon: Icons.health_and_safety,
      theme: kBlue,
      left: '1 left',
      done: '1 done'),
  //const Task(title: 'Add', icon: Icons.add, theme: kYellowLight),
];
