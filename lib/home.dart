// ignore_for_file: sort_child_properties_last, prefer_const_constructors, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var img;
  late Map mapres;
  late Map mapres1;
  late List listres;
  Future getdata() async {
    // http.Response response;
    final response =
        await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    if (response.statusCode == 200) {
      setState(() {
        var img = response.body;
        mapres = jsonDecode(img);
        listres = mapres['data'];
      });
    } else {
      Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Call 5"),
      ),
      body: ListView.builder(
        itemCount: listres.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.network(listres[index]['avatar']),
                ),
                Text(listres[index]['id'].toString()),
                Text(listres[index]['email'].toString()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(listres[index]['first_name'].toString()),
                    Text(listres[index]['last_name'].toString()),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



// Center(
//         child: Container(
//           child: listres == null
//               ? Container()
//               : Center(child: Text(listres[0]['avatar'].toString())),
//           height: 200,
//           width: 300,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.blue[300],
//           ),
//         ),
//       ),