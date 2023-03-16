import 'package:flutter/material.dart';
import 'package:choose_input_chips/choose_input_chips.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ChipsInput',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final _chipKey = GlobalKey<ChipsInputState>();

  @override
  Widget build(BuildContext context) {
    const mockResults = <AppProfile>[
      AppProfile('Charlie', 'charlie@flutter.io', 'man-1.png'),
      AppProfile('Diana', 'diana@flutter.io', 'woman-1.png'),
      AppProfile('Fred', 'fred@flutter.io', 'man-2.png'),
      AppProfile('Gina', 'gina@flutter.io', 'woman-2.png'),
      AppProfile('John', 'john@flutter.io', 'man-3.png'),
      AppProfile('Marie', 'marie@flutter.io', 'woman-3.png'),
      AppProfile('Pauline', 'pauline@flutter.io', 'woman-4.png'),
      AppProfile('Susan', 'susan@flutter.io', 'woman-5.png'),
      AppProfile('Thomas', 'thomas@flutter.io', 'man-4.png'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter ChipsInput')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Start typing a name below:'),
              ),
              ChipsInput(
                key: _chipKey,
                initialValue: const [
                  AppProfile('John', 'john@flutter.io', 'man-3.png')
                ],
                textStyle: const TextStyle(
                  height: 1.5,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                ),
                decoration: const InputDecoration(
                  labelText: 'Select People',
                ),
                findSuggestions: (String query) {
                  if (query.isNotEmpty) {
                    var lowercaseQuery = query.toLowerCase();
                    return mockResults.where((profile) {
                      return profile.name
                              .toLowerCase()
                              .contains(query.toLowerCase()) ||
                          profile.email
                              .toLowerCase()
                              .contains(query.toLowerCase());
                    }).toList(growable: false)
                      ..sort((a, b) => a.name
                          .toLowerCase()
                          .indexOf(lowercaseQuery)
                          .compareTo(
                              b.name.toLowerCase().indexOf(lowercaseQuery)));
                  }
                  return mockResults;
                },
                onChanged: (data) {
                  // this is a good place to update application state
                },
                chipBuilder: (context, state, dynamic profile) {
                  return InputChip(
                    key: ObjectKey(profile),
                    label: Text(profile.name),
                    avatar: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/avatars/${profile.imageName}'),
                    ),
                    onDeleted: () => state.deleteChip(profile),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  );
                },
                suggestionBuilder: (context, state, dynamic profile) {
                  return ListTile(
                    key: ObjectKey(profile),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/avatars/${profile.imageName}'),
                    ),
                    title: Text(profile.name),
                    subtitle: Text(profile.email),
                    onTap: () => state.selectSuggestion(profile),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Click the button to add a specific chip'),
              ),
              ElevatedButton(
                onPressed: () {
                  _chipKey.currentState!.selectSuggestion(const AppProfile(
                      'Gina', 'gina@flutter.io', 'woman-3.png'));
                },
                child: const Text('Add Chip'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppProfile {
  final String name;
  final String email;
  final String imageName;

  const AppProfile(this.name, this.email, this.imageName);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppProfile &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return name;
  }
}
