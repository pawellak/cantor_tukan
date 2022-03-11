import 'package:flutter/material.dart';

class ExchangeRateSubmitting
{
  call() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}