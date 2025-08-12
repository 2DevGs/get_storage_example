import 'package:flutter/material.dart';
import 'package:get_storage_example/core/sotrage/storage.dart';

class StoragePage extends StatefulWidget {


  StoragePage({super.key});

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  final storage = Storage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(storage.name),
            ElevatedButton(
              onPressed: () {
                storage.name = 'Gustavo Dias';
                setState(() {});
              },
              child: const Text('Gravar nome'),
            ),
            ElevatedButton(
              onPressed: () {
                storage.name = '';
                setState(() {});
              },
              child: const Text('Remover nome'),
            ),
            Text('Get: ${storage.nameGetX}'),
            ElevatedButton(
              onPressed: () {
                storage.nameGetX = 'Gustavo Dias GetX';
                setState(() {});
              },
              child: const Text('Gravar nome'),
            ),
            ElevatedButton(
              onPressed: () {
                storage.nameGetX = '';
                setState(() {});
              },
              child: const Text('Remover nome'),
            ),
          ],
        ),
      ),
    );
  }
}
