import 'package:bahcem_deneme/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../SizeConfig.dart';

class RegisterSayfasi extends StatefulWidget {
  final Function toggleView;

  RegisterSayfasi({this.toggleView});

  @override
  _RegisterSayfasiState createState() => _RegisterSayfasiState();
}

class _RegisterSayfasiState extends State<RegisterSayfasi> {
  final _formKey = GlobalKey<FormState>();
  final _kullaniciAdi = TextEditingController();
  final _sifre = TextEditingController();
  final _eposta = TextEditingController();
  final _sifreTekrar = TextEditingController();

  final AuthService _auth = AuthService();
  String error = '';

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.almostWhite,
      body: ListView(
        children: <Widget>[
          Container(
            height: SizeConfig.screenHeight - SizeConfig.safeAreaHorizontal,
            width: SizeConfig.screenWidth - SizeConfig.safeAreaVertical,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  SizeConfig.blockWidth * 6, 0, SizeConfig.blockWidth * 6, 0),
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              0,
                              SizeConfig.blockWidth * 6,
                              0,
                              SizeConfig.blockWidth * 10),
                          child: Text(
                            "Bahçem",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              color: SizeConfig.green,
                              fontFamily: "Photoshoot",
                              fontSize: SizeConfig.blockWidth * 13,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(SizeConfig.blockWidth * 0.5,
                                      SizeConfig.blockWidth * 0.5),
                                  blurRadius: 5.0,
                                  color: Color.fromARGB(60, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.blockWidth * 3,
                              left: SizeConfig.blockWidth * 6,
                              right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? 'Lütfen eposta giriniz' : null,
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                              textAlignVertical: TextAlignVertical.bottom,
                              cursorColor: SizeConfig.green,
                              controller: _eposta,
                              decoration: InputDecoration(
                                hintText: "E-Posta",
                                hintStyle: SizeConfig.yaziHint,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide: BorderSide(
                                    color: SizeConfig.green,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.blockWidth * 3,
                              left: SizeConfig.blockWidth * 6,
                              right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.bottom,
                                cursorColor: SizeConfig.green,
                                controller: _kullaniciAdi,
                                decoration: InputDecoration(
                                  hintText: "Kullanıcı adı",
                                  hintStyle: SizeConfig.yaziHint,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                      color: SizeConfig.green,
                                    ),
                                  ),
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return "Boş geçilemez";
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.blockWidth * 3,
                              left: SizeConfig.blockWidth * 6,
                              right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                              obscureText: true,
                              validator: (val) => val.length < 6
                                  ? 'En az 6 karakter uzunluğunda şifre giriniz'
                                  : null,
                              onChanged: (val) {
                                setState(() => password = val);
                              },
                              textAlignVertical: TextAlignVertical.bottom,
                              cursorColor: SizeConfig.green,
                              controller: _sifre,
                              decoration: InputDecoration(
                                hintText: "Şifre",
                                hintStyle: SizeConfig.yaziHint,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.zero,
                                  borderSide: BorderSide(
                                    color: SizeConfig.green,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.blockWidth * 3,
                              left: SizeConfig.blockWidth * 6,
                              right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                                obscureText: true,
                                textAlignVertical: TextAlignVertical.bottom,
                                cursorColor: SizeConfig.green,
                                controller: _sifreTekrar,
                                decoration: InputDecoration(
                                  hintText: "Şifre tekrar",
                                  hintStyle: SizeConfig.yaziHint,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                      color: SizeConfig.green,
                                    ),
                                  ),
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return "Boş geçilemez";
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.blockWidth * 1),
                          child: Container(
                            height: SizeConfig.blockWidth * 10,
                            width: SizeConfig.blockWidth * 26,
                            child: FlatButton(
                                onPressed: () async {
                                  if (_formKey.currentState.validate()) {
                                    dynamic result = await _auth
                                        .registerWithEmailAndPassword(
                                            email, password);
                                    if (result == null) {
                                      setState(() {
                                        error =
                                            'Lütfen geçerli bir eposta giriniz';
                                      });
                                    }
                                  }
                                },
                                //onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()),),
                                child: Container(
                                  child: Text(
                                    "Kayıt",
                                    style: TextStyle(
                                      fontSize: SizeConfig.blockWidth * 5.5,
                                      color: SizeConfig.almostWhite,
                                      fontFamily: "Champagne-Limousines-Bold",
                                    ),
                                  ),
                                ),
                                color: SizeConfig.green,
                                shape: StadiumBorder()),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                bottom: SizeConfig.blockWidth * 1),
                            //child: SizedBox(height: 12.0),
                            child: Text(
                              error,
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14.0),
                            )),
                        Padding(
                          padding:
                              EdgeInsets.only(top: SizeConfig.blockWidth * 30),
                          child: Container(
                            height: SizeConfig.blockWidth * 10,
                            width: SizeConfig.blockWidth * 40,
                            child: FlatButton(
                                onPressed: () => widget.toggleView(),
                                //onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()),),
                                child: Container(
                                  child: Text(
                                    "Giriş Yap",
                                    style: TextStyle(
                                      fontSize: SizeConfig.blockWidth * 5.5,
                                      color: SizeConfig.almostWhite,
                                      fontFamily: "Champagne-Limousines-Bold",
                                    ),
                                  ),
                                ),
                                color: SizeConfig.green,
                                shape: StadiumBorder()),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}