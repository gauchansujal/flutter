// import 'package:flutter/material.dart';

// class ContainerScreen extends StatelessWidget {
//   const ContainerScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center( // centers the container
//           child: Container(

//             width: 200,
//             height: 200,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               shape:BoxShape.circle,
//               color: Colors.red, // container background
//               border: Border.all(
//                 color: Colors.black,
//                 width: 2,
//               ),
//             ),
//             child: const Text(
//               'I am container',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: const Text('hello'),
          ),
        ),
      ),
    );
  }
}
