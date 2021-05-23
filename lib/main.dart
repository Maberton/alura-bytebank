import 'package:flutter/material.dart';

// void main() {
//   print('bem vindo ao bytebank');
// }

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Transferências'),
          ),
          body: ListaTransferencia(),
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );

class ListaTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(300.25, 1220)),
        ItemTransferencia(Transferencia(300.29, 1221)),
        ItemTransferencia(Transferencia(300.27, 1221)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
