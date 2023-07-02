import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:band_names/providers/socket_provider.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final socketProvider = Provider.of<SockectProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('SeverStatus xd: ${socketProvider.serverStatus}')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          socketProvider.socket.emit('emitir-mensaje', {'nomnre': 'ceny', 'mensaje': 'hola'});
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}
