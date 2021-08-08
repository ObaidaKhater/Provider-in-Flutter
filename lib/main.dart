import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_in_flutter/providers/test_provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TestProvider>(
      create: (context) => TestProvider(), child: MaterialApp(home: MyApp())));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider In Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(Provider.of<TestProvider>(context).message),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.print),
        onPressed: () {
          Provider.of<TestProvider>(context, listen: false)
              .changeMessage('Ali Ali\n99635585');
        },
      ),
    );
  }
}
