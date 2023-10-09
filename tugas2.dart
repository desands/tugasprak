class Hewan {
  double berat;

  Hewan(this.berat);
}

class Mobil {
  double totalBeratMaksimum;
  List<Hewan> muatan = [];

  Mobil(this.totalBeratMaksimum);

  void tambahMuatan(Hewan hewan) {
    double totalBeratMuatan = muatan.fold(0, (sum, h) => sum + h.berat);
    if (totalBeratMuatan + hewan.berat <= totalBeratMaksimum) {
      muatan.add(hewan);
      print("Hewan ditambahkan ke muatan.");
    } else {
      print("Kapasitas muatan tidak mencukupi.");
    }
  }
}

void main() {
  Mobil mobil =
      Mobil(500); // Mengatur total berat maksimum muatan menjadi 500 kg

  Hewan gajah = Hewan(5); // gajah memiliki berat 5 kg
  Hewan paus = Hewan(20); // paus memiliki berat 20 kg

  mobil.tambahMuatan(gajah); // Menambahkan gajah ke dalam muatan
  mobil.tambahMuatan(paus); // Menambahkan paus ke dalam muatan
}

// no 2 ================================================
Future<List<int>> multiplyList(List<int> dataList, int multiplier) async {
  List<int> result = [];

  for (int data in dataList) {
    await Future.delayed(Duration(
        seconds:
            1)); // Simulasi operasi asinkronous (Anda bisa menghapus ini jika tidak diperlukan)
    result.add(data * multiplier);
  }

  return result;
}

void main() async {
  List<int> dataList = [1, 2, 3, 4, 5];
  int multiplier = 2;

  List<int> result = await multiplyList(dataList, multiplier);

  print(result); // Output: [2, 4, 6, 8, 10]
}
