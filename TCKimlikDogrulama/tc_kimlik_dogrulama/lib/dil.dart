const String baslikTR = "Kimlik Doğrulama Sistemi";
const String textFieldTR = "T.C. Kimlik Numarası Giriniz";
const String olusturTR = "Oluştur";
const String dogrulaTR = "Doğrula";
const String hataTR = "HATA!";
const String uzunlukHataTR = "T.C. kimlik numarası 11 rakamdan\n oluşmalıdır!";
const String bosHataTR = "Lütfen bir T.C. kimlik numarası\n giriniz!";
const String gecerliTR = "GEÇERLİ!";
const String gecerlitcTR = "T.C. kimlik numarası geçerlidir!";
const String gecersizTR = "GEÇERSİZ!";
const String gecersiztcTR = "T.C. kimlik numarası geçersizdir!";
const String turkce = "TR";

const String baslikEN = "ID Verifying System";
const String textFieldEN = "Enter ID Number";
const String olusturEN = "Create";
const String dogrulaEN = "Verify";
const String hataEN = "ERROR!";
const String uzunlukHataEN = "ID number must consist of\n 11 digits!";
const String bosHataEN = "Please enter an ID number!";
const String gecerliEN = "VALID!";
const String gecerlitcEN = "The ID number is valid!";
const String gecersizEN = "UNVALID!";
const String gecersiztcEN = "The ID number is unvalid!";
const String ingilizce = "EN";

bool turkceMi = true;

void dilDegistir() {
  turkceMi = !turkceMi;
}
