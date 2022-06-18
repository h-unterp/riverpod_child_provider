import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pagination_view/pagination_view.dart';
import 'package:riverpod_child_provider/dogs.dart';

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

Widget myWidget(BuildContext context, WidgetRef ref) {
  return PaginationView<String>(
    paginationViewType: PaginationViewType.listView,
    itemBuilder: (BuildContext context, String fid, int index) {
      return Text(ref.watch(dogProvider(DogType.shiba)).setMe,
          style: const TextStyle(fontSize: 25));
    },
    pageFetch: pageFetch,
    pullToRefresh: true,
    onError: (dynamic error) => const Center(
      child: Text('Some error occured. Sorry!'),
    ),
    onEmpty: const Text('Sorry! This is empty'),
    bottomLoader: const Center(
      child: CircularProgressIndicator(),
    ),
    initialLoader: const Center(
      child: CircularProgressIndicator(),
    ),
  );
}

Future<List<String>> pageFetch(int offset) async {
  final List<String> nextUsersList =
      List.generate(5, (int index) => ' - $offset$index');
  return nextUsersList;
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(ref.watch(dogProvider(DogType.shiba)).setMe,
                  style: const TextStyle(fontSize: 25)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(ref.watch(dogProvider(DogType.pittie)).setMe,
                  style: const TextStyle(fontSize: 25)),
            ),
            Flexible(child: myWidget(context, ref)),
            TextButton(
                onPressed: () {
                  ref.read(dogProvider(DogType.shiba).notifier).setIt("Hey");
                },
                child: const Text(
                  "Set it",
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }
}
