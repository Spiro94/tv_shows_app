import 'package:flutter/material.dart';

import 'widgets/grid_state_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Home',
                style: theme.textTheme.headline3!.copyWith(fontSize: 40),
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(child: GridStateWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
