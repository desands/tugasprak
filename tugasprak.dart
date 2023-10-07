import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

// ruas lingkaran
void main(List<String> arguments) {
  double jariJari = 6.0;
  double luasLingkaran = hitungLuasLingkaran(jariJari);
  print("Luas lingkaran dengan jari-jari $jariJari adalah $luasLingkaran");
}

double hitungLuasLingkaran(double radius) {
  double phi = 3.14;
  double luas = phi * radius * radius;
  return luas;
}

//factorial
int factorial(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

void main() {
  int n1 = 10;
  int n2 = 20;
  int n3 = 30;

  print("Faktorial dari $n1 adalah ${factorial(n1)}");
  print("Faktorial dari $n2 adalah ${factorial(n2)}");
  print("Faktorial dari $n3 adalah ${factorial(n3)}");
}

// ============================
//penggabungan 3 variable string
void main() {
  // Membuat tiga variabel string
  String string_a = "Nama :";
  String string_b = " Dede ";
  String string_c = "Sani...";

  // Menggabungkan string-string tersebut
  String gabungkan_sebuah = string_a + string_b + string_c;

  // Menampilkan hasilnya di layar
  print(gabungkan_sebuah);
}
