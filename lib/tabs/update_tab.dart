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
  var currCountry = "Philippines", countryCode = "PH";
  bool loading = true;

  void initState() {
    super.initState();
    _getUpdate(countryCode);
  }

  Future<void> _getUpdate(String code) async {
    final response = await http.get(
      "https://covid19.mathdro.id/api/countries/$code",
    );

    Map<String, dynamic> data = jsonDecode(response.body);
    if (!mounted) return;
    setState(() {
      confirmed = data["confirmed"]["value"];
      recovered = data["recovered"]["value"];
      deaths = data["deaths"]["value"];
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Center(child: CircularProgressIndicator())
        : Container(
            height:
                MediaQuery.of(context).size.height - kBottomNavigationBarHeight,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: Color(0xFFfa7470),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Container(
                              height: 70,
                              child: Image.asset('assets/confirmed.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Kumpirmadong Kaso",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                confirmed.toString(),
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "+0 ngayon",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: Color(0xFFa7e0a5),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Container(
                              height: 70,
                              child: Image.asset('assets/recovered.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Bilang ng mga Gumaling",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                recovered.toString(),
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "+0 ngayon",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: Color(0xFFc3645f),
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Container(
                                height: 70,
                                child: Image.asset('assets/death.png'),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Bilang ng mga Namatay",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  deaths.toString(),
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  "+0 ngayon",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
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
          );
  }
}
