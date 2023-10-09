import 'package:di_sample/presentation/screen_two.dart';
import 'package:di_sample/utils/injection_container.dart';
import 'package:di_sample/utils/service.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

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
                  Text('Go to Screen Two'),
                ],
              )),
        ),
      ],
    );
  }
}
