import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>> [
  {'elevation': 0, 'label':'Elevation 0'},
  {'elevation': 1, 'label':'Elevation 1'},
  {'elevation': 2, 'label':'Elevation 2'},
  {'elevation': 3, 'label':'Elevation 3'},
  {'elevation': 4, 'label':'Elevation 4'},
  {'elevation': 5, 'label':'Elevation 5'},
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...cards.map((card) => _CardType1(label: card['label'], elevation: card['elevation'])),
        ...cards.map((card) => _CardType1(label: card['label'], elevation: card['elevation']))
      ],
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({
    required this.label, 
    required this.elevation
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert_outlined))
                ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(label),
              )
            ],
          ),
        ),
        ),
    );
  }
}