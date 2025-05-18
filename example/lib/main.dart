import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DSizeUtils.init(
      context,
      builder: (context) => MaterialApp(home: const HomeView()),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('fDevs FitKit')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          return showAsyncLoadingOverlay(
            context,
            asyncFunction: () => Future.delayed(Durations.extralong4),
          );
        },
      ),
    );
  }
}
