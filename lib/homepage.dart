import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Icon(Icons.forward),
              onPressed: (){
                Navigator.of(context).pushNamed('/network');
              },
            ),
          ],
        ),
      ),
    );
  }
}
