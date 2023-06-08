import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://jsonplaceholder.typicode.com/posts";

  void postData() async {
    final response = await post(Uri.parse(url),
        body: {"title": "Anything", "body": "Post body", "userId": "1"});
    print(response.body);
  }

  // var _postsJson = [];

  // void fetchPosts() async {
  //   try {
  //     final response = await get(Uri.parse(url));
  //     final jsonData = jsonDecode(response.body) as List;
  //     setState(() {
  //       _postsJson = jsonData;
  //     });
  //   } catch (err) {}
  // }

  // @override
  // void initState() {
  //   //TODO:implement initstate
  //   super.initState();
  //   fetchPosts();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Http Get Post'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: postData,
            child: Text("Send Post"),
          ),
        ));
  }
}
