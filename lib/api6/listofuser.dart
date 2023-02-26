// // ignore_for_file: prefer_const_constructors

// import 'package:api5/api6/listofuser_model.dart';
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class Listofuser extends StatefulWidget {
//   const Listofuser({super.key});

//   @override
//   State<Listofuser> createState() => _ListofuserState();
// }

// class _ListofuserState extends State<Listofuser> {
//   List<Userimages> userimages = [];
//   Future<List<Userimages>> getdata() async {
//     final response =
//         await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
//     var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       for (Map<String, dynamic> index in data) {
//         userimages.add(Userimages.fromJson(index));
//       }
//       return userimages;
//     } else {
//       Center(
//         child: CircularProgressIndicator(),
//       );
//     }
//   }

//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   getdata();
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Api Call 6"),
//       ),
//       body: FutureBuilder(
//         future: getdata(),
//         builder: (context, AsyncSnapshot) {
//           if (AsyncSnapshot.hasData) {
//             return ListView.builder(
//                 itemCount: userimages.length,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     children: [
                      
//                     ],
//                   );
//                 });
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
