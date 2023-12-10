import 'package:flutter/material.dart';
import 'api_controller.dart' as submitter;

class NimNamaForm extends StatelessWidget {
  NimNamaForm({super.key});

  final _nimController = TextEditingController();
  final _namaMhsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _nimController,
            maxLength: 12,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              labelText: "Nim",
            ),
          ),
          TextField(
            controller: _namaMhsController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              labelText: "Nama",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: ElevatedButton(
              onPressed: () {
                submitter.HttpController().setUrl("http://localhost::3000/api");
                submitter.HttpController().setNamaMhs(_namaMhsController.text);
                submitter.HttpController().setNim(_nimController.text);
                submitter.HttpController().submit();
              },
              child: const Text("Submit"),
            ),
          ),
        ],
      ),
    );
  }
}
