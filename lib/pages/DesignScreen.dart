import 'package:flutter/material.dart';
import 'package:onedollar/Provider/DataProvider.dart';
import 'package:provider/provider.dart';

class DesignScreen extends StatelessWidget {
  const DesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    dataProvider.fetchAlbum();
    return Consumer<DataProvider>(
      builder: (context, dataProvider, child) {
        if (dataProvider.album.isEmpty) {
          return CircularProgressIndicator();
        } else {
          return ListView.builder(
            itemCount: dataProvider.album.length,
            itemBuilder: (context, index) {
              final data = dataProvider.album[index];
              return ListTile(
                title: Text(data.Name),
                subtitle: Text(data.RenderedImageUrl),
              );
            },
          );
        }
      },
    );
  }
}
