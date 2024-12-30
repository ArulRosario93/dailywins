import 'package:app/widgets/Homepage/Body/body.dart';
import 'package:app/widgets/Homepage/Footer/footer.dart';
import 'package:app/widgets/Homepage/Header/Header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
        
            //Header
            Flexible(flex: 2, child: Header()),
        
            //Body
            Flexible(flex: 5, child: Body()),
        
            // Footer
            Flexible(flex: 2, child: Footer()),
          ],
        ),
      )
    );
  }
}