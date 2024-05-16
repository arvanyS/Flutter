import 'dart:math';

int uzunlukKontrol(String tc) {
  if (tc.length == 11) {
    return 1;
  } else if (tc.isEmpty) {
    return 0;
  }

  return -1;
}

List<int> diziyeCevir(String tc) {
  List<int> rakamlar = [];
  for (int i = 0; i < tc.length; i++) {
    int rakam = int.parse(tc[i]);
    rakamlar.add(rakam);
  }

  return rakamlar;
}

int onuncuRakamBulucu(String tc) {
  List<int> rakamlar = diziyeCevir(tc);
  int ilktoplam = 0;
  int ikincitoplam = 0;
  int onuncu = 0;

  for (int i = 0; i < 9; i++) {
    if (i % 2 == 0) {
      ilktoplam += rakamlar[i];
    }
    if (i % 2 == 1) {
      ikincitoplam += rakamlar[i];
    }
  }
  onuncu = ((7 * ilktoplam) - ikincitoplam) % 10;
  return onuncu;
}

int onBirinciRakamBulucu(String tc) {
  List<int> rakamlar = diziyeCevir(tc);
  int toplam = 0;
  int onbirinci = 0;
  for (int i = 0; i < 9; i++) {
    toplam += rakamlar[i];
  }
  toplam += onuncuRakamBulucu(tc);
  onbirinci = toplam % 10;

  return onbirinci;
}

bool onuncuRakamKontrol(String tc) {
  List<int> rakamlar = diziyeCevir(tc);
  int onuncu = onuncuRakamBulucu(tc);

  if (onuncu == rakamlar[9]) {
    return true;
  }
  return false;
}

bool onBirinciRakamKontrol(String tc) {
  List<int> rakamlar = diziyeCevir(tc);
  int onbirinci = onBirinciRakamBulucu(tc);

  if (onbirinci == rakamlar[10]) {
    return true;
  }
  return false;
}

int rastgeleSayi() {
  Random rnd = Random();
  int rastSayi = rnd.nextInt(900000000) + 100000000;
  return rastSayi;
}

List<int> tcOlustur(int tc) {
  List<int> rakamlar = diziyeCevir(tc.toString());
  rakamlar.add(onuncuRakamBulucu(tc.toString()));
  rakamlar.add(onBirinciRakamBulucu(tc.toString()));

  return rakamlar;
}

String birlestir(List<int> dizi) {
  String tc = '';
  for (int i = 0; i < dizi.length; i++) {
    tc += dizi[i].toString();
  }
  return tc;
}
