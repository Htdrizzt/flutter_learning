import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learning_101/202/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  // ignore: unused_field
  String? name;
  bool _isLoading = false;
  // ignore: unused_field
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  // TEST EDIELBIR KOD BASLADI

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  Future<void> _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post('posts', data: postModel);

    if (response.statusCode == HttpStatus.created) {
      name = 'başarili';
    }
    _changeLoading();
  }

  // ignore: unused_element
  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name ?? ''),
          actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
        ),
        body: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
              textInputAction: TextInputAction.next,
            ),
            TextField(
                controller: _bodyController,
                decoration: const InputDecoration(labelText: 'Body'),
                textInputAction: TextInputAction.next),
            TextField(
                textInputAction: TextInputAction.next,
                controller: _userIdController,
                keyboardType: TextInputType.number,
                autofillHints: const [AutofillHints.creditCardNumber],
                decoration: const InputDecoration(labelText: 'UserId')),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          // ignore: unused_local_variable
                          final model = PostModel(
                              body: _bodyController.text,
                              title: _titleController.text,
                              userId: int.tryParse(_userIdController.text));

                          _addItemToService(model);
                        }
                      },
                child: const Text('Send'))
          ],
        ));
  }
}
