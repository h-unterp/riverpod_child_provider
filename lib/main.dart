import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_child_provider/dogs.dart';
import 'package:riverpod_child_provider/kennel.dart';

final shibaProvider = StateNotifierProvider<Shiba, DogState>((ref) {
  return Shiba();
});

final pittieProvider = StateNotifierProvider<Pittie, DogState>((ref) {
  return Pittie();
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ref.watch(kennelProvider).dogState.produce(),
            ),
            Text(
              'hi',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 120,
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [
                Expanded(
                    child: TextButton(
                  onPressed: () {
                    ref.read(kennelProvider.notifier).changeDog(Shiba());
                  },
                  child: const Text("Shiba", style: TextStyle(fontSize: 30)),
                )),
                const SizedBox(width: 10),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      ref.read(kennelProvider.notifier).changeDog(Pittie());
                    },
                    child: const Text("Pittie", style: TextStyle(fontSize: 30)),
                  ),
                )
              ]))),
    );
  }
}
