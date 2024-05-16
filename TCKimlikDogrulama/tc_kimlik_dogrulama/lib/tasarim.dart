import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tc_kimlik_dogrulama/algoritma.dart';
import 'package:tc_kimlik_dogrulama/dialoglar.dart';
import 'package:tc_kimlik_dogrulama/dil.dart';

bool acikTema = true;

class Tasarim extends StatefulWidget {
  const Tasarim({super.key});

  @override
  State<Tasarim> createState() => _TasarimState();
}

class _TasarimState extends State<Tasarim> {
  final TextEditingController input = TextEditingController();

  void dil() {
    setState(() {
      dilDegistir();
    });
  }

  void tema() {
    setState(() {
      acikTema = !acikTema;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: turkceMi ? baslikTR : baslikEN,
      home: Scaffold(
          backgroundColor: acikTema ? Colors.white : Colors.black,
          body: Stack(
            children: [
              Center(
                child: Container(
                  width: 350,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: acikTema ? Colors.white : Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        turkceMi ? baslikTR : baslikEN,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: acikTema ? Colors.black : Colors.white),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: input,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          labelText: turkceMi ? textFieldTR : textFieldEN,
                          labelStyle: TextStyle(
                              color: acikTema ? Colors.black : Colors.white),
                        ),
                        style: TextStyle(
                            color: acikTema ? Colors.black : Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //OLUSTUR BUTONU
                          ElevatedButton(
                            onPressed: () {
                              input.text = birlestir(tcOlustur(rastgeleSayi()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 211, 211, 211),
                                foregroundColor:
                                    const Color.fromARGB(255, 69, 69, 69),
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            child: Text(turkceMi ? olusturTR : olusturEN),
                          ),

                          //DOGRULA BUTONU
                          ElevatedButton(
                            onPressed: () {
                              String girilenTC = input.text;

                              if (uzunlukKontrol(girilenTC) == -1) {
                                uzunlukHatasi(context);
                              } else if (uzunlukKontrol(girilenTC) == 0) {
                                emptyHatasi(context);
                              } else {
                                if (onuncuRakamKontrol(girilenTC) &&
                                    onBirinciRakamKontrol(girilenTC)) {
                                  basariliTC(context);
                                } else {
                                  gecersizTC(context);
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            child: Text(turkceMi ? dogrulaTR : dogrulaEN),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: dil,
                      child: Text(
                        turkceMi ? ingilizce : turkce,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey),
                      ),
                    )),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: tema,
                      child: Icon(
                        Icons.brightness_4,
                        color: Colors.grey,
                      ),
                    )),
              ),
            ],
          )),
    );
  }
}
