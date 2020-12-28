import 'package:ejmplo_getit/data/models/episodes_page_model.dart';
import 'package:ejmplo_getit/domain/entities/episodes_page.dart';
import 'package:ejmplo_getit/domain/entities/result.dart';
import 'package:ejmplo_getit/presentation/provider/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba inyeccion'),
      ),
      body: Consumer<DataProvider>(
        builder: (_, snapshot, __) {
          if (snapshot.episodesPage == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.errorMessage != null) {
            return Center(
              child: Text(snapshot.errorMessage),
            );
          }
          if (snapshot.episodes.isEmpty) {
            return Center(
              child: Text('vacio'),
            );
          }

          final results = snapshot.episodes;
          return ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              Result episode = results[index];
              return ListTile(
                title: Text(episode.name),
                trailing: Icon(Icons.keyboard_arrow_right),
              );
            },
          );
        },
        child: Container(),
      ),
    );
  }
}
