import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class UpdateTab extends StatefulWidget {
  const UpdateTab({Key key}) : super(key: key);

  @override
  _UpdateTabState createState() => _UpdateTabState();
}

class _UpdateTabState extends State<UpdateTab> {
  var confirmed = 0, recovered = 0, deaths = 0;
  var newConfirmed = "+0", newRecovered = "+0", newDeaths = "+0";
  bool loading = true;

  void initState() {
    super.initState();
    _getUpdate();
  }

  Future<void> _getUpdate() async {
    final response = await http.get(
      "https://covid-193.p.rapidapi.com/statistics?country=Philippines",
      headers: {
        "X-RapidAPI-Key": "c610fdda25msh8984955294084dfp116074jsn2b22ef8e9e02"
      },
    );

    final recoveredData = await http.get("https://api.covid19api.com/summary");
    Map<String, dynamic> temp = jsonDecode(recoveredData.body);
    var rest = temp["Countries"] as List;
    for (var i in rest) {
      if (i["Country"] == "Philippines") {
        if (!mounted) return;
        setState(() {
          recovered = i["TotalRecovered"];
          newRecovered = "+" + i["NewRecovered"].toString();
        });
      }
    }

    Map<String, dynamic> data = jsonDecode(response.body);
    if (!mounted) return;
    setState(() {
      confirmed = data["response"][0]["cases"]["total"];
      newConfirmed = data["response"][0]["cases"]["new"];
      deaths = data["response"][0]["deaths"]["total"];
      newDeaths = data["response"][0]["deaths"]["new"];
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - kBottomNavigationBarHeight,
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
                        loading
                            ? CircularProgressIndicator()
                            : Text(
                                confirmed.toString(),
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                        SizedBox(height: 10.0),
                        Text(
                          newConfirmed + " ngayon",
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
                        loading
                            ? CircularProgressIndicator()
                            : Text(
                                recovered.toString(),
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                        SizedBox(height: 10.0),
                        Text(
                          newRecovered + " ngayon",
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
                          loading
                              ? CircularProgressIndicator()
                              : Text(
                                  deaths.toString(),
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                          SizedBox(height: 10.0),
                          Text(
                            newDeaths + " ngayon",
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
