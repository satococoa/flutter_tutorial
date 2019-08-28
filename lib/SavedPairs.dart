import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class SavedPairs extends StatelessWidget {
  final Set<WordPair> pairs;
  const SavedPairs(this.pairs);
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    final tiles = pairs.map(
      (pair) {
        return ListTile(
          title: Text(pair.asPascalCase, style: _biggerFont),
        );
      },
    );
    final divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Suggestions'),
      ),
      body: ListView(children: divided),
    );
  }
}
