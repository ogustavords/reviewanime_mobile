import 'package:flutter/material.dart';
import 'package:reviewanime/views/anime_details_view.dart';
import 'package:reviewanime/views/profile_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommended Animes'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recommended Animes', style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            ListTile(
              title: Text('Anime 1'),
              onTap: () {
                Navigator.pushNamed(context, '/anime_details');
              },
            ),
            ListTile(
              title: Text('Anime 2'),
              onTap: () {
                Navigator.pushNamed(context, '/anime_details');
              },
            ),
          ],
        ),
      ),
    );
  }
}
