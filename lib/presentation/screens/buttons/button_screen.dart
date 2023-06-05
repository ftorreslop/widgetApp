import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated deactivated'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Filleb Button'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessibility_new),
              label: const Text('Filled Icon'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlinet Button'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.terminal),
              label: const Text('Outline Icon'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('TextButton'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.text_fields),
              label: const Text('Text Icon'),
            ),
            // TODO: custom button
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
