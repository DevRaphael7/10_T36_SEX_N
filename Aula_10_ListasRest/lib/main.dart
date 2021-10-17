import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Http-Json-ListView',
      home: BuildListView(),
    );
  }
}

class BuildListView extends StatefulWidget {
  @override
  _BuildListViewState createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  var users = [];

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        users = lista.map((model) => User.fromJson(model)).toList();
        print(users);
      });
    });
  }

  _BuildListViewState() {
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Usuários"),
        ),
        body: listaUsuarios());
  }

  listaUsuarios() {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://www.pinclipart.com/picdir/big/218-2189254_free-online-avatars-kid-characters-family-vector-for.png"),
            backgroundColor: Colors.blueAccent[300],
            // child: Text('Eevee'),
          ),
          title: Text(users[index].name,
              style: TextStyle(fontSize: 20.0, color: Colors.black)),
          subtitle: Text(users[index].date),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => DetailPage(users[index])));
          },
        );
      },
    );
  }
}

class DetailPage extends StatelessWidget {
  final User user;

  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user.name),
        ),
        body: userDetails());
  }

  userDetails() {
    return Container(
      padding: new EdgeInsets.all(32.0),
      child: ListTile(
        title: Text(user.name, style: TextStyle(fontWeight: FontWeight.w500)),
        subtitle: Text(user.realized.toString()),
        leading: Icon(Icons.email, color: Colors.blue),
      ),
    );
  }
}

Uri url = Uri.parse("http://emsapi.esy.es/todolist/api/task/search/");

class API {
  static Future getUsers() async {
    return await http.post(
      url,
      headers: <String, String>{
        "Content-Type": "Application/json; charset=UTF-8",
        "Authorization": "123",
      },
    );
  }
}

class User {
  final int id;
  final int userId;
  final String name;
  final String date;
  final int realized;

  User(this.id, this.userId, this.name, this.date, this.realized);

  User.fromJson(Map json)
      : id = json['id'],
        userId = json['userId'],
        name = json['name'],
        date = json['date'],
        realized = json['realized'];
}
