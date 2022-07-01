import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pagination_view/pagination_view.dart';
import 'package:riverpod_child_provider/dogs.dart';
import 'package:riverpod_infinite_scroll/riverpod_infinite_scroll.dart';

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
        body: RiverPagedBuilder<String?, String>(
      firstPageKey: null,
      pullToRefresh: true,
      provider: pittieProvider,
      itemBuilder: (context, String item, index) => Text(item),
      pagedBuilder: (controller, builder) =>
          PagedListView(pagingController: controller, builderDelegate: builder),
    ));
  }
}
