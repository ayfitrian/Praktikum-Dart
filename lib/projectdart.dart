import 'dart:io';

void main() {
  // Daftar barang yang dijual dan keterangan harga 
  Map<String, int> daftarBarang = {
    "Indomie Goreng": 3500,
    "Indomie Rebus": 3000,
    "Sabun Lifebuoy": 5500,
    "Shampoo Sunsilk": 10000,
    "Beras 5kg": 75000,
    "Gula 1kg": 14000,
    "Minyak Goreng 1L": 20000,
    "Telur 1kg": 27000,
    "Teh Celup Sariwangi": 8000,
    "Kopi Kapal Api": 12000,
    "Air Mineral 600ml": 4000,
    "Roti Sari Roti": 9000,
    "Susu Ultra 1L": 18000,
    "Pasta Gigi Pepsodent": 9000,
    "Tisu Paseo": 11000
  };

  List<String> keranjang = [];
  List<int> hargaBarang = [];

  print("=====================================");
  print("     SELAMAT DATANG DI KASIR TOKO YAYUK");
  print("=====================================\n");

  // Tampilkan daftar barang
  print("📦 Daftar Barang yang Tersedia:");
  daftarBarang.forEach((nama, harga) {
    print("- $nama : Rp$harga");
  });

  print("\n💡 PETUNJUK PENGGUNAAN:");
  print("------------------------------------------------");
  print("➡ Ketik *nama barang* untuk menambah ke keranjang");
  print("➡ Ketik *cancel* untuk menghapus barang dari keranjang");
  print("➡ Ketik *lihat* untuk menampilkan isi keranjang");
  print("➡ Ketik *selesai* untuk menyelesaikan belanja");
  print("------------------------------------------------\n");

  while (true) {
    stdout.write("Masukkan perintah Anda: ");
    String? input = stdin.readLineSync();

    if (input == null) continue;

    // Jika selesai belanja
    if (input.toLowerCase() == 'selesai') {
      print("\n🔸 Proses belanja selesai. Menyiapkan struk...\n");
      break;
    }

    // Jika ingin melihat isi keranjang
    if (input.toLowerCase() == 'lihat') {
      if (keranjang.isEmpty) {
        print("🛒 Keranjang masih kosong.\n");
      } else {
        print("\n🧾 Isi Keranjang Saat Ini:");
        for (int i = 0; i < keranjang.length; i++) {
          print("${i + 1}. ${keranjang[i]} - Rp${hargaBarang[i]}");
        }
        print("");
      }
      continue;
    }

    // Jika ingin membatalkan/hapus barang
    if (input.toLowerCase() == 'cancel') {
      if (keranjang.isEmpty) {
        print("⚠️ Keranjang masih kosong, tidak ada yang bisa dihapus.\n");
      } else {
        print("\n🧾 Isi Keranjang Saat Ini:");
        for (int i = 0; i < keranjang.length; i++) {
          print("${i + 1}. ${keranjang[i]} - Rp${hargaBarang[i]}");
        }
        stdout.write("Ketik nama barang yang ingin dihapus: ");
        String? hapus = stdin.readLineSync();

        if (hapus != null && keranjang.contains(hapus)) {
          int index = keranjang.indexOf(hapus);
          keranjang.removeAt(index);
          hargaBarang.removeAt(index);
          print("✅ Barang '$hapus' berhasil dihapus dari keranjang.\n");
        } else {
          print("❌ Barang tidak ditemukan di keranjang.\n");
        }
      }
      continue;
    }

    // Jika nama barang valid
    if (daftarBarang.containsKey(input)) {
      keranjang.add(input);
      hargaBarang.add(daftarBarang[input]!);
      print("🛒 '$input' berhasil ditambahkan ke keranjang.\n");
    } else {
      print("❌ Barang tidak ditemukan. Coba ketik nama yang sesuai daftar.\n");
    }
  }

  // Hitung total
  int total = 0;
  for (var harga in hargaBarang) {
    total += harga;
  }

  // Tampilkan struk
  print("=====================================");
  print("           STRUK BELANJA");
  print("=====================================");
  if (keranjang.isEmpty) {
    print("Tidak ada barang yang dibeli.");
  } else {
    for (int i = 0; i < keranjang.length; i++) {
      print("${i + 1}. ${keranjang[i]} - Rp${hargaBarang[i]}");
    }
    print("-------------------------------------");
    print("Total Belanja : Rp$total");

    // Diskon 10% jika total > 100.000
    if (total > 100000) {
      double diskon = total * 0.1;
      double totalBayar = total - diskon;
      print("Diskon 10%   : -Rp${diskon.toInt()}");
      print("Total Akhir  : Rp${totalBayar.toInt()}");
      total = totalBayar.toInt();
    }

    // Input uang pembayaran
    stdout.write("\nMasukkan uang pembayaran: Rp");
    int? bayar = int.tryParse(stdin.readLineSync() ?? "0");

    if (bayar == null || bayar < total) {
      print("❌ Uang tidak cukup. Transaksi dibatalkan.");
    } else {
      int kembalian = bayar - total;
      print("\n💰 Kembalian Anda: Rp$kembalian");
      print("✅ Transaksi berhasil! Terima kasih telah berbelanja ❤️");
    }
  }
}
