import 'package:flutter/material.dart';

import '../../../core/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          (context.t?.home).orError,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
