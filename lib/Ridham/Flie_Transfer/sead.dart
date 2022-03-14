import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class MySeadflie extends StatefulWidget {
  const MySeadflie({Key? key}) : super(key: key);

  @override
  State<MySeadflie> createState() => _MySeadflieState();
}

class _MySeadflieState extends State<MySeadflie> {
  final qrkey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void reassemble() async {
    super.reassemble();

    if(Platform.isAndroid){
      await controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          bulidQrview(),
        ],
      ),
    );
  }

  bulidQrview() => QRView(
        key: qrkey,
        onQRViewCreated: onQRViewCreated,
        overlay: QrScannerOverlayShape(
          borderColor: Colors.greenAccent,
          borderWidth: 10,
          borderRadius: 10,
          borderLength: 20,
          cutOutSize: MediaQuery.of(context).size.width*0.8,
        ),
      );

  void onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
  }
}
