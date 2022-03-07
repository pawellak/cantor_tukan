import 'package:flutter/material.dart';

class ListPointTitle
{

  Widget call(String title) {
    return Text(" $title ", style: const TextStyle(fontWeight: FontWeight.bold));
  }
}