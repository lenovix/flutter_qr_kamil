import 'package:flutter/material.dart';
import 'package:flutter_qr_kamil/qr_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textQrController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('QR Code Example'),
          actions: [],
        ),
        body: Column(
          children: [
            TextField(
              controller: textQrController,
              decoration: const InputDecoration(
                  label: const Text('Input Text QR Code')),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return QRView(textQR: textQrController.text);
                    },
                  ));
                },
                child: const Text('Generate QR Code'))
          ],
        ));
  }
}
