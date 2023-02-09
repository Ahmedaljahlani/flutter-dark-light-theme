import 'package:flutter/material.dart';

void main() {
  var appbar_color;
  return runApp(themingModes());
}

class themingModes extends StatefulWidget {
  const themingModes({Key? key}) : super(key: key);

  @override
  State<themingModes> createState() => _themingModesState();
}

class _themingModesState extends State<themingModes> {
  bool isNight = true;
  ThemeMode _themeMode = ThemeMode.system;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool click = true;
    var appbar_color;
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),

      // standard dark theme
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // backgroundColor: appbar_color == true ? Colors.green : Colors.red,
          backgroundColor: (click == false) ? Colors.red : Colors.red,
          title: Text('dark and light'),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(25.0),
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        changeTheme(ThemeMode.light);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('images/light.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        changeTheme(ThemeMode.dark);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('images/dark-mode.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
