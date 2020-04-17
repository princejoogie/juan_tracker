import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonDecode;

class UpdateTab extends StatefulWidget {
  const UpdateTab({Key key}) : super(key: key);

  @override
  _UpdateTabState createState() => _UpdateTabState();
}

class _UpdateTabState extends State<UpdateTab> {
  var confirmed = 0, recovered = 0, deaths = 0;
  var _countries = [], currCountry = "Philippines", countryCode = "PH";

  void initState() {
    super.initState();
    _getUpdate(countryCode);
    _getCountries();
  }

  Future<void> _getUpdate(String code) async {
    final response = await http.get(
      "https://covid19.mathdro.id/api/countries/$code",
    );

    Map<String, dynamic> data = jsonDecode(response.body);
    setState(() {
      confirmed = data["confirmed"]["value"];
      recovered = data["recovered"]["value"];
      deaths = data["deaths"]["value"];
    });
  }

  Future<void> _getCountries() async {
    final response = await http.get(
      "https://covid19.mathdro.id/api/countries",
    );

    Map<String, dynamic> data = jsonDecode(response.body);
    setState(() {
      _countries = data["countries"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(currCountry),
          Container(
            width: double.infinity,
            color: Colors.grey,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Confirmed",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    confirmed.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Recovered",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    recovered.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.red,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Deaths",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    deaths.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 260,
            child: ListView.builder(
              itemCount: _countries.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    _getUpdate(_countries[index]["iso2"]);
                    setState(() {
                      currCountry = _countries[index]["name"];
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Container(
                      color: Colors.blueAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          _countries[index]["name"],
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
