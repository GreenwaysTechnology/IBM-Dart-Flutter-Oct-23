import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(userId: json['userId'], id: json['id'], title: json['title']);
  }
}

Future<List<Album>> fetchAlbums() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  List responseJson = json.decode(response.body);
  if (response.statusCode == 200) {
    return responseJson.map((m) => Album.fromJson(m)).toList();
  } else {
    throw Exception('faild');
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<List<Album>> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API Call',
      home: Scaffold(
        appBar: AppBar(title: const Text('API call')),
        body: Center(
          child: FutureBuilder<List<Album>>(
              future: futureAlbum,
              builder: (context, snapshot) {
                List<Album>? albums = snapshot.data;
                return new ListView(
                    children: albums!
                        .map((album) => Column(
                              children: <Widget>[
                                Text(
                                  album.title,
                                  softWrap: true,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            ))
                        .toList());
                //show progressbar
                return const CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}
