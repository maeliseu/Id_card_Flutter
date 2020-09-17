import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// Criamos Widget Statefull que representa a tela
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future _launchUrl(String url) async {
    // const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Falha ao abrir url: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      //AppBar
      // appBar: AppBar(
      //   title: Text('IdCard'),
      // ),
      //Body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          CircleAvatar(
            backgroundColor: Colors.pinkAccent,
            radius: 95,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/5211507/pexels-photo-5211507.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
              radius: 90,
            ),
          ),
          Text(
            'Yasmin Roussef',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 75,
              vertical: 20,
            ),
            child: Divider(
              color: Colors.pinkAccent,
              height: 5,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: ListTile(
              leading:
                  Icon(FontAwesomeIcons.linkedin, color: Colors.pinkAccent),
              title: Text(
                'linkedin/yasminroussef',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                _launchUrl('https://flutter.dev');
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: ListTile(
              leading: Icon(FontAwesomeIcons.facebook, color: Colors.blue),
              title: Text(
                'Facebook/yasminroussef',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                _launchUrl(
                    'https://flutter.dev/docs/get-started/test-drive?tab=terminal');
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ButaoCustomizado extends StatelessWidget {
  final String textoBotao;
  const ButaoCustomizado(this.textoBotao);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      child: Text(textoBotao),
    );
  }
}
