## Identitas
### Nama : Ayu Fitrianingsih
### NIM : H1D023038
### Shift : E/A

/*
============================================================
🛒 PROGRAM KASIR SEDERHANA MENGGUNAKAN DART
============================================================

## 📘 Deskripsi Program
Program ini merupakan **studi kasus sederhana** untuk mempelajari dasar pemrograman menggunakan bahasa **Dart**.  
Aplikasi ini mensimulasikan sistem kasir toko yang mampu:
- Menampilkan daftar barang dan harga.
- Menambahkan barang ke keranjang.
- Menghapus (cancel) barang dari keranjang.
- Menghitung total harga belanja.
- Memberikan diskon otomatis 10% jika total belanja melebihi Rp50.000.
- Menampilkan struk belanja lengkap dengan daftar barang yang dibeli.

Program ini berjalan di **terminal/console** dan cocok untuk latihan dasar pemrograman (variabel, list, map, percabangan, perulangan, input/output).

---

## 🧠 Konsep Pemrograman yang Diterapkan
| Konsep | Penjelasan |
|--------|-------------|
| `Map` | Menyimpan data barang beserta harganya |
| `List` | Menyimpan barang yang dipilih pembeli |
| `stdin.readLineSync()` | Menerima input teks dari pengguna |
| `if`, `else if`, `else` | Mengatur logika alur aplikasi |
| `for`, `while` | Melakukan pengulangan untuk input dan perhitungan |
| `String.split()` | Memisahkan perintah seperti `hapus [barang]` |
| `print()` | Menampilkan hasil, perintah, dan struk ke layar |

---

## 🚀 Fitur Utama
✅ Menampilkan daftar barang dan harga  
✅ Menambahkan barang ke keranjang belanja  
✅ Membatalkan barang dari keranjang  
✅ Menghitung total belanja otomatis  
✅ Memberikan diskon 10% jika total > Rp50.000  
✅ Menampilkan struk belanja akhir  
✅ Petunjuk perintah yang jelas dan mudah dipahami  

---

## 🧩 Daftar Barang di Toko
| No | Nama Barang | Harga |
|----|--------------|--------|
| 1 | Indomie | Rp3.000 |
| 2 | Sabun | Rp5.000 |
| 3 | Shampoo | Rp10.000 |
| 4 | Beras 1kg | Rp15.000 |
| 5 | Gula 1kg | Rp13.000 |
| 6 | Minyak Goreng 1L | Rp14.000 |
| 7 | Telur 1kg | Rp25.000 |
| 8 | Kopi Sachet | Rp2.000 |
| 9 | Teh Celup | Rp4.000 |
| 10 | Susu Kotak | Rp8.000 |
| 11 | Roti Tawar | Rp12.000 |
| 12 | Mie Telur | Rp7.000 |
| 13 | Tepung Terigu 1kg | Rp11.000 |
| 14 | Kecap Manis | Rp9.000 |
| 15 | Saos Sambal | Rp8.500 |
| 16 | Sarden Kaleng | Rp13.000 |
| 17 | Air Mineral 1.5L | Rp6.000 |
| 18 | Keju Slice | Rp15.000 |
| 19 | Mentega 200gr | Rp12.000 |
| 20 | Sikat Gigi | Rp4.000 |

---

## 🧮 Petunjuk Penggunaan Program
1. Jalankan program di terminal menggunakan perintah:
   ```bash
   dart run kasir_sederhana.dart
2. Ketik nama barang untuk menambahkannya ke keranjang.
3. Ketik hapus [nama_barang] untuk membatalkan barang dari keranjang.
4. Ketik daftar untuk melihat daftar barang.
5. Ketik keranjang untuk melihat isi keranjang.
6. Ketik selesai untuk menyelesaikan belanja dan menampilkan struk.
