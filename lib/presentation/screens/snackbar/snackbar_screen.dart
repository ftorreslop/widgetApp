import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum facilisis auctor justo vitae posuere. Vestibulum tincidunt ex finibus odio luctus blandit. Donec tempor, ante et cursus suscipit, lorem erat sodales ante, quis mattis libero lorem eget arcu. Pellentesque et malesuada purus. Pellentesque congue tristique nunc quis pharetra. Sed eleifend pharetra accumsan. Suspendisse varius ipsum vel varius consectetur.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum facilisis auctor justo vitae posuere. Vestibulum tincidunt ex finibus odio luctus blandit. Donec tempor, ante et cursus suscipit, lorem erat sodales ante, quis mattis libero lorem eget arcu. Pellentesque et malesuada purus. Pellentesque congue tristique nunc quis pharetra. Sed eleifend pharetra accumsan. Suspendisse varius ipsum vel varius consectetur.')
                  ],
                );
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: const Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
