import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_storage_example/pages/home/home_page.dart';
import 'package:get_storage_example/pages/storage/storage_page.dart';
Future<void> main() async {
  await GetStorage.init();
  await GetStorage.init('JornadaGetX');
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Storage Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      home: StoragePage(),
    );
  }
}