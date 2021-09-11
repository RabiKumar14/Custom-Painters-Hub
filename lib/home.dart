import 'package:custom_painters_hub/example1/painter_ui.dart';
import 'package:flutter/material.dart';

List<HomeItem> homeList = [customPainter];

class HomeItem {
  final String title;
  final String subtitle;
  final VoidCallback action;

  HomeItem({
    required this.title,
    required this.subtitle,
    required this.action,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: homeList.map((e) {
            return Container(
              padding: const EdgeInsets.all(10),
              width: 330,
              child: TextButton(
                onPressed: e.action,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      FittedBox(
                        child: Text(
                          e.title,
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          e.subtitle,
                          style: const TextStyle(
                              fontSize: 15, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
