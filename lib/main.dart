import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sandwich Shop App',
        home: Scaffold(
            appBar: AppBar(title: const Text('Sandwich Counter')),
            body: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 500,
                    height: 300,
                    color: Colors.blue,
                    child: const Center(child: OrderItemDisplay(3, 'BLT')),
                  ),
                  Container(
                    width: 500,
                    height: 300,
                    color: const Color.fromARGB(255, 151, 154, 167),
                    child: const Center(child: OrderItemDisplay(5, 'Club')),
                  ),
                  Container(
                    width: 500,
                    height: 300,
                    color: Colors.red,
                    child: const Center(child: OrderItemDisplay(5, 'Veggie')),
                  ),
                ],
              ),
            )));
  }
}
//           Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Expanded(
//                     child: Container(
//                         width: 500,
//                         height: 300,
//                         color: Colors.blue,
//                         child:
//                             const Center(child: OrderItemDisplay(3, 'BLT')))),
//                 Expanded(
//                   child: Container(
//                       width: 500,
//                       height: 300,
//                       color: Colors.blue,
//                       child: const Center(child: OrderItemDisplay(5, 'Club'))),
//                 ),
//                 Expanded(
//                   child: Container(
//                       width: 500,
//                       height: 300,
//                       color: Colors.blue,
//                       child:
//                           const Center(child: OrderItemDisplay(5, 'Veggie'))),
//                 ),
//               ])),
//     );
//   }
// }

class OrderItemDisplay extends StatelessWidget {
  final int quantity;
  final String itemType;

  const OrderItemDisplay(this.quantity, this.itemType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text('$quantity $itemType sandwich(es): ${'🥪' * quantity}');
  }
}
