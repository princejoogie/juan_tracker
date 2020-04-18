import 'package:flutter/material.dart';
import 'package:juan_tracker/components/product_attributes.dart';

class ProductWidget extends StatefulWidget {
  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  List<ProductAttr> products = [
    ProductAttr(
      name: "Face Mask",
      imageUrl: 'assets/mask.png',
      available: 0,
      needed: 0,
    ),
    ProductAttr(
      name: 'Gloves',
      imageUrl: 'assets/glove.png',
      available: 0,
      needed: 0,
    ),
    ProductAttr(
      name: 'Gowns',
      imageUrl: 'assets/gown.png',
      available: 0,
      needed: 0,
    ),
    ProductAttr(
      name: 'Alcohol',
      imageUrl: 'assets/alcohol.png',
      available: 0,
      needed: 0,
    ),
    ProductAttr(
      name: 'Ventilators',
      imageUrl: 'assets/ventilator.png',
      available: 0,
      needed: 0,
    ),
    ProductAttr(
      name: 'Beds',
      imageUrl: 'assets/hospital-bed.png',
      available: 0,
      needed: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            SizedBox(height: 15.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                height: 130,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70,
                              child: Image.asset(products[index].imageUrl),
                            ),
                            Text(
                              products[index].name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Available",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(25, 10, 5, 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 1.0,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "0",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Needed",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0.0, 1.0), //(x,y)
                                        blurRadius: 1.0,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      "0",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                ),
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
        );
      },
    );
  }
}
