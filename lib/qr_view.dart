import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRView extends StatelessWidget {
  final String textQR;
  const QRView({super.key, required this.textQR});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR View'),
      ),
      body: Column(
        children: [
          Center(
            child: QrImageView(
              data: textQR,
              version: QrVersions.auto,
              size: 240,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(textQR)
        ],
      ),
    );
  }
}
