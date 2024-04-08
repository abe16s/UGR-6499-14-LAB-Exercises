import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    String result = "Alemu";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                child: const Text("Next"),
                onPressed: ()  {
                  Navigator.pushNamed(context, "/screentwo");
                  // result = await Navigator.push(context,
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) => ScreenTwo(),
                  //     settings: const RouteSettings(arguments: "Abebe"),
                  //     )
                  //   );
                  // print(result);
            }
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}