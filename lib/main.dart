import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Madam Tan's Lucky Crystal"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage('images/main_image.png'),
                width: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 250,
                    child: Card(
                      elevation: 2.0,
                      color: Colors.deepPurpleAccent,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'What 2020 Has in Store For You?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70,
                                  fontSize: 20),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Get your Horoscope Forecast.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white70),
                            ),
                            SizedBox(height: 10),
                            Container(
                              color: Colors.white30,
                              padding: EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: BirthMonthChooser(),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: BirthDayChooser(),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: BirthDayChooser(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.deepPurple[700],
      ),
    );
  }
}

class BirthMonthChooser extends StatefulWidget {
  @override
  _BirthMonthChooserState createState() => _BirthMonthChooserState();
}

class _BirthMonthChooserState extends State<BirthMonthChooser> {
  String dropdownValue = 'Jan';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        'Jan',
        'Feb',
        'Mar',
        'Apr',
        'May',
        'Jun',
        'Jul',
        'Aug',
        'Sep',
        'Oct',
        'Nov',
        'Dec'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class BirthDayChooser extends StatefulWidget {
  @override
  _BirthDayChooserState createState() => _BirthDayChooserState();
}

class _BirthDayChooserState extends State<BirthDayChooser> {
  String dropdownValue = '1';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        '1',
        '2',
        '3',
        '4',
        '5',
        '6',
        '7',
        '8',
        '9',
        '10',
        '11',
        '12',
        '13',
        '14',
        '15',
        '16',
        '17',
        '18',
        '19',
        '20',
        '21',
        '22',
        '23',
        '24',
        '25',
        '26',
        '27',
        '28',
        '29',
        '30',
        '31'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
