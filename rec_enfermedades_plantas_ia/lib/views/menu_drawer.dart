import 'package:flutter/material.dart';
import '../main.dart';
import 'predict.dart';
import 'about_page.dart';
import 'credits_page.dart';
import 'prediction_history.dart'; // Add this import

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6, // 60% of screen width
      child: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container( // Wrap DrawerHeader in a Container to control height
                height: 100, // Set desired height here
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text(
                      'Menu de Opciones',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                ),
              ),
              ListTile(
                title: const Text('Inicio'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PredictPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Acerca de'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Creditos'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreditsPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Historial'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PredictionHistoryPage()),
                  );
                },
              ),
              const Spacer(), // Pushes the text down
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'v1.0',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12, // Small font size
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}