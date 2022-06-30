import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pagination_view/pagination_view.dart';
import 'package:riverpod_child_provider/dogs.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PittieNotifier pittieNotif =
        ref.read(dogStateProvider(DogType.pittie).notifier) as PittieNotifier;

    pittieNotif.startDog();
    pittieNotif.goTime(3);

    ShibaNotifier shibaNotif =
        ref.read(dogStateProvider(DogType.shiba).notifier) as ShibaNotifier;
    shibaNotif.shibaWay(true);

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
    PittieState pittie =
        ref.watch(dogStateProvider(DogType.pittie)) as PittieState;
    ShibaState shiba = ref.watch(dogStateProvider(DogType.shiba)) as ShibaState;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '''Pittie: Meals: ${pittie.meals.toString()} Collar: ${pittie.collar.toString()}''',
                  style: const TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  '''Shiba: Collar: ${shiba.collar.toString()} Quiet: ${shiba.quiet.toString()}''',
                  style: const TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
