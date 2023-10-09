import 'package:flutter/material.dart';
import 'package:di_sample/utils/injection_container.dart';
import 'package:di_sample/utils/service.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ElevatedButton(
              onPressed: () {
                String currentDate = locator<AppService>().execute();
                debugPrint(currentDate);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const ScreenTwo();
                  },
                ));
              },
              child: const Column(
                children: [
                  Text('Get Date'),
                ],
              )),
        ),
      ],
    );
  }
}
