import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Multi Select',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Multi Select'),
    );
  }
}

class Animal {
  final int id;
  final String name;

  final String subTitle;
  final String imgUrl;

  Animal({
    this.subTitle,
    this.imgUrl,
    this.id,
    this.name,
  });
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<Animal> _animals = [
    Animal(
        id: 1,
        name: "Lion",
        subTitle: 'King uh hk kjn',
        imgUrl: 'https://picsum.photos/250?image=9'),
    Animal(
        id: 2,
        name: "Flamingo",
        subTitle: 'King2',
        imgUrl: 'https://picsum.photos/250?image=8'),
    Animal(
        id: 3,
        name: "Hippo",
        subTitle: 'King sdf sh uh uih',
        imgUrl: 'https://picsum.photos/250?image=7'),
    Animal(
        id: 4,
        name: "Horse",
        subTitle: 'King h h h ',
        imgUrl: 'https://picsum.photos/250?image=6876'),
    Animal(
        id: 5,
        name: "Tiger",
        subTitle: 'King uiguii gig ig',
        imgUrl: 'https://picsum.photos/250?image=5'),
  ];
  final _items = _animals
      .map((animal) =>
          MultiSelectItem<Animal>(value: animal, label: animal.name))
      .toList();
  //List<Animal> _selectedAnimals = [];
  List<Animal> _selectedAnimals2 = [];
  List<Animal> _selectedAnimals3 = [];
  //List<Animal> _selectedAnimals4 = [];
  List<Animal> _selectedAnimals5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _selectedAnimals5 = _animals;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Column(children: [
            MultiSelectDialogField(
              title: const Text('Add People In Your Event'),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(width: 0.5, color: Colors.grey),
              ),
              buttonIcon: const Icon(
                Icons.people_outline_outlined,
                color: Colors.grey,
              ),
              buttonText: const Text(
                'Invite People',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              searchable: true,
              items: _animals
                  .map(
                    (e) => MultiSelectItem(
                        value: e,
                        label: e.name,
                        imgUrl: e.imgUrl,
                        subTitle: e.subTitle),
                  )
                  .toList(),
              listType: MultiSelectListType.LIST,
              onConfirm: (List<Animal> confirmList) {
                // innerState(() {
                //   _selectedFriends = confirmList;
                // });
              },
            ),
          ]),
        ),
      ),
    );
  }
}
