import 'package:flutter/material.dart';

class Event {
  final String title;
  final String description;
  final DateTime from;
  final DateTime to;

  final bool isAllday;

  Event({
    required this.title,
    required this.description,
    required this.from,
    required this.to,
    required this.isAllday ,

  });
}