import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'custom_switch.dart';
import 'main.dart';

class BahcemBitkiDuzenle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BahcemBitkiDuzenleState();
}

class BahcemBitkiDuzenleState extends State<BahcemBitkiDuzenle>{
  String dropdownValue = '1';
  String dropdownValue1 = 'günde';
  String dropdownValue3 = '1';
  String dropdownValue4 = 'günde';
  String dropdownValue5 = 'torflu';
  String dropdownValue6 = 'Çok ışıklı ortam';
  String dropdownValue7 = '20-22 derece';
  String dropdownValue8 = 'Açık';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      appBar:  AppBar(
        title: Text(
          'Ponsetya 1 Düzenle',
          style: SizeConfig.yaziAppbarBaslik,
        ),
        backgroundColor: SizeConfig.almostWhite,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: SizeConfig.green, //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: new ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockWidth * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    maxLines: null,
                    cursorColor: SizeConfig.green,
                    initialValue: 'Pontesya 1',
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: SizeConfig.green,
                        ),
                      ),
                    ),
                    style: SizeConfig.yaziAciklama,
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: SizeConfig.blockWidth * 4),
                        child: Container(
                          height:
                          (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                          width:
                          (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/ponsetya.jpg"),
                              colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstATop),
                              fit: BoxFit.cover,
                            ),
                          ),
                          //margin: EdgeInsets.all(5.0),
                          alignment: Alignment.bottomRight,
                          child: new Icon(
                            Icons.edit,
                            size: SizeConfig.blockWidth * 8,
                            color: SizeConfig.almostBlack,
                          ),
                        ),
                      ),
                      Container(
                        height:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                        width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.7,
                        alignment: Alignment.bottomCenter,
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          cursorColor: SizeConfig.green,
                          initialValue: 'Zeynep\'in kendisi kadar zarif hediyesi <3',
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: SizeConfig.green,
                              ),
                            ),
                          ),
                          style: SizeConfig.yaziAciklama,
                        ),
                      ),
                    ]
                )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Sulama",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 12,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            isExpanded: true,
                            style: SizeConfig.yaziWidgetIci,
                            underline: Container(
                              height:  SizeConfig.blockWidth * 0.3,
                              color: SizeConfig.almostBlack,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['1', '2', '3', '4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: SizeConfig.yaziWidgetIci,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 22,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue1,
                            isExpanded: true,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            style: SizeConfig.yaziWidgetIci,
                            underline: Container(
                              height:  SizeConfig.blockWidth * 0.3,
                              color: SizeConfig.almostBlack,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue1 = newValue;
                              });
                            },
                            items: <String>['günde', 'haftada', 'ayda', 'yılda']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: SizeConfig.yaziWidgetIci,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: SizeConfig.blockWidth * 5,
                          child: Text(
                            "bir",
                            style: SizeConfig.yaziWidgetIci,
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Toprak değişim",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 12,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue3,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            isExpanded: true,
                            style: SizeConfig.yaziWidgetIci,
                            underline: Container(
                              height:  SizeConfig.blockWidth * 0.3,
                              color: SizeConfig.almostBlack,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue3 = newValue;
                              });
                            },
                            items: <String>['1', '2', '3', '4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: SizeConfig.yaziWidgetIci,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 22,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue4,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            isExpanded: true,
                            style: SizeConfig.yaziWidgetIci,
                            underline: Container(
                              height:  SizeConfig.blockWidth * 0.3,
                              color: SizeConfig.almostBlack,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue4 = newValue;
                              });
                            },
                            items: <String>['günde', 'haftada', 'ayda', 'yılda']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: SizeConfig.yaziWidgetIci,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: SizeConfig.blockWidth * 5,
                          child: Text(
                            "bir",
                            style: SizeConfig.yaziWidgetIci,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Toprak tipi",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: dropdownValue5,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        isExpanded: true,
                        style: SizeConfig.yaziWidgetIci,
                        underline: Container(
                          height:  SizeConfig.blockWidth * 0.3,
                          color: SizeConfig.almostBlack,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue5 = newValue;
                          });
                        },
                        items: <String>['torflu', 'orkide toprağı']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: SizeConfig.yaziWidgetIci,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Işık ihtiyacı",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: dropdownValue6,
                        isExpanded: true,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        style: SizeConfig.yaziWidgetIci,
                        underline: Container(
                          height:  SizeConfig.blockWidth * 0.3,
                          color: SizeConfig.almostBlack,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue6 = newValue;
                          });
                        },
                        items: <String>['Çok ışıklı ortam', 'Az ışıklı ortam']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: SizeConfig.yaziWidgetIci,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Isı ihtiyacı",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: dropdownValue7,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        isExpanded: true,
                        style: SizeConfig.yaziWidgetIci,
                        underline: Container(
                          height:  SizeConfig.blockWidth * 0.3,
                          color: SizeConfig.almostBlack,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue7 = newValue;
                          });
                        },
                        items: <String>['20-22 derece', '20-30 derece']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: SizeConfig.yaziWidgetIci,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Fotoğraf albümü",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0, SizeConfig.blockWidth * 2, 0),
                  child: Container(
                    height: SizeConfig.blockWidth * 15,
                    width: SizeConfig.blockWidth * 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya.jpg"),
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.75), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: new Icon(
                      Icons.clear,
                      size: SizeConfig.blockWidth * 10,
                      color: SizeConfig.almostBlack,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0, SizeConfig.blockWidth * 2, 0),
                  child: Container(
                    height: SizeConfig.blockWidth * 15,
                    width: SizeConfig.blockWidth * 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya-saksi.jpg"),
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.75), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: new Icon(
                      Icons.clear,
                      size: SizeConfig.blockWidth * 10,
                      color: SizeConfig.almostBlack,
                    ),
                  ),
                ),
                Container(
                  height: SizeConfig.blockWidth * 15,
                  width: SizeConfig.blockWidth * 15,
                  decoration: BoxDecoration(
                    color: SizeConfig.almostWhite,
                  ),
                  child: new Icon(
                    Icons.add,
                    size: SizeConfig.blockWidth * 10,
                    color: SizeConfig.almostBlack,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Hatırlatıcılar",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: dropdownValue8,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        isExpanded: true,
                        style: SizeConfig.yaziWidgetIci,
                        underline: Container(
                          height:  SizeConfig.blockWidth * 0.3,
                          color: SizeConfig.almostBlack,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue8 = newValue;
                          });
                        },
                        items: <String>['Açık', 'Kapalı']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: SizeConfig.yaziWidgetIci,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.blockWidth * 33, top: SizeConfig.blockWidth * 2, right: SizeConfig.blockWidth * 33, bottom: SizeConfig.blockWidth * 2),
              child: Container(
                height: SizeConfig.blockWidth * 8,
                width: SizeConfig.blockWidth * 26,
                child: FlatButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(
                        "Düzenle",
                        style: SizeConfig.yaziButon,
                      ),
                    ),
                    color: SizeConfig.green,
                    shape: StadiumBorder()
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}