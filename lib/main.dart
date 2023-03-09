import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'api_service.dart';
import 'joke.dart';

void main() {
  runApp(ChuckJokesApp());
}

class ChuckJokesApp extends StatefulWidget {
  ChuckJokesApp({Key? key}) : super(key: key);

  @override
  _ChuckJokesAppState createState() => _ChuckJokesAppState();
}

class _ChuckJokesAppState extends State<ChuckJokesApp> {
  late final Image image;
  late Joke joke;
  final ApiService apiService = ApiService(httpClient: http.Client());

  _ChuckJokesAppState() {
    this.image = Image(image: AssetImage('assets/main.jpg'),fit: BoxFit.fill,);
    this.joke = Joke(value: 'Loading...', categories: []);
    apiService.getJoke().then((joke) {
      setState(() {
        this.joke = joke;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chuck Jokes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
                width: 150,
                child: this.image,
              ),
              SizedBox(height: 16,),
              Text(
                this.joke.value,
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    child: Text('Dislike'),
                    onPressed: () {
                      apiService.getJoke().then((joke) {
                        setState(() {
                          this.joke = joke;
                        });
                      });
                    },
                  ),
                  TextButton(
                    child: Text('Like'),
                    onPressed: () {
                      apiService.getJoke().then((joke) {
                        setState(() {
                          this.joke = joke;
                        });
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
