import 'package:flutter/material.dart';
import 'package:iti_flutter/sreens/pag4_http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page4Http(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   String url = 'https://flutterappdev.com/wp-content/uploads/2019/01/Screen-Shot-2019-01-25-at-12.54.42-PM-860x500.png';
//
//   int count = 0 ;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:Colors.white ,
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 40),
//                 child: Container(
//                     child: Image.network(url,width: 100,)),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                 child: TextField(
//                   decoration: InputDecoration(hintText: 'Phone Number'),
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                 child: TextField(
//                   decoration: InputDecoration(hintText: 'Phone Number'),
//                 ),
//               ),
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   child:
//                       ElevatedButton(onPressed: () {
//                         Navigator.push(context, MaterialPageRoute(builder:(context){return Page4Http();} ));
//                       }, child: Text('Log in')),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextButton(onPressed: (){},
//                       child: Text('Forget Password ?',
//                       style: TextStyle(
//                         color: Colors.grey
//                       ),)) ,
//                   Text('No yawa.',
//                       style: TextStyle(
//                       color: Colors.grey
//                   ),),
//                   TextButton(onPressed: (){},
//                       child: Text('Top me',
//                         style: TextStyle(
//                             color: Colors.grey
//                         ),)) ,
//                 ],
//               ),
//               Text(count.toString()),
//               Padding(
//                 padding:
//                 const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   child:
//                   ElevatedButton(onPressed: () {},
//                       child: Text('No Account? Sign up'),
//                     style: ButtonStyle(
//                       backgroundColor:MaterialStateProperty.all<Color>(Colors.grey)
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: (){
//           setState(() {
//             count++;
//           });
//         },
//       ),
//     );
//   }
// }
