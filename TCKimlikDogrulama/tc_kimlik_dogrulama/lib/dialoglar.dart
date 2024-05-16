import 'package:flutter/material.dart';
import 'package:tc_kimlik_dogrulama/dil.dart';
import 'package:tc_kimlik_dogrulama/tasarim.dart';

void uzunlukHatasi(dynamic context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            turkceMi ? hataTR : hataEN,
            style: TextStyle(color: acikTema ? Colors.black : Colors.white),
          ),
          content: Row(
            children: [
              const Icon(Icons.close, color: Colors.red),
              Text(
                turkceMi ? uzunlukHataTR : uzunlukHataEN,
                style: TextStyle(color: acikTema ? Colors.black : Colors.white),
              ),
            ],
          ),
          backgroundColor:
              acikTema ? Colors.white : Color.fromARGB(255, 40, 40, 40),
        );
      });
}

void emptyHatasi(dynamic context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            turkceMi ? hataTR : hataEN,
            style: TextStyle(color: acikTema ? Colors.black : Colors.white),
          ),
          content: Row(
            children: [
              const Icon(Icons.close, color: Colors.red),
              Text(
                turkceMi ? bosHataTR : bosHataEN,
                style: TextStyle(color: acikTema ? Colors.black : Colors.white),
              ),
            ],
          ),
          backgroundColor:
              acikTema ? Colors.white : Color.fromARGB(255, 40, 40, 40),
        );
      });
}

void basariliTC(dynamic context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            turkceMi ? gecerliTR : gecerliEN,
            style: TextStyle(color: acikTema ? Colors.black : Colors.white),
          ),
          content: Row(
            children: [
              const Icon(
                Icons.check,
                color: Colors.green,
              ),
              Text(
                turkceMi ? gecerlitcTR : gecerlitcEN,
                style: TextStyle(color: acikTema ? Colors.black : Colors.white),
              )
            ],
          ),
          backgroundColor:
              acikTema ? Colors.white : Color.fromARGB(255, 40, 40, 40),
        );
      });
}

void gecersizTC(dynamic context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            turkceMi ? gecersizTR : gecersizEN,
            style: TextStyle(color: acikTema ? Colors.black : Colors.white),
          ),
          content: Row(
            children: [
              const Icon(
                Icons.close,
                color: Colors.red,
              ),
              Text(
                turkceMi ? gecersiztcTR : gecersiztcEN,
                style: TextStyle(color: acikTema ? Colors.black : Colors.white),
              )
            ],
          ),
          backgroundColor:
              acikTema ? Colors.white : Color.fromARGB(255, 40, 40, 40),
        );
      });
}
