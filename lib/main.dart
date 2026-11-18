// Mengimpor pustaka antarmuka Material Design utama dari framework Flutter
import 'package:flutter/material.dart';

// Fungsi utama (entry point): Titik paling awal program Dart dieksekusi saat aplikasi dijalankan
void main() {
  // Menjalankan widget root (SmartKasirApp) dan memasangnya ke dalam rendering engine Flutter
  runApp(const SmartKasirApp());
}

// Deklarasi kelas root aplikasi turunan StatelessWidget (tampilan konfigurasi tetap / tidak berubah dinamis)
class SmartKasirApp extends StatelessWidget {
  // Konstruktor konstan dengan parameter 'key' untuk identifikasi unik widget di pohon widget (Widget Tree)
  const SmartKasirApp({super.key});

  // Method build: Menghasilkan struktur antarmuka visual (Widget Tree) yang akan dirender di layar
  @override
  Widget build(BuildContext context) {
    // Komponen/Widget MaterialApp: Wadah arsitektur dasar aplikasi berstandar Google Material Design
    return MaterialApp(
      // Properti judul aplikasi (tampil pada task manager sistem operasi atau tab browser Chrome)
      title: 'SmartKasir',
      // Menonaktifkan banner pita merah bertuliskan 'DEBUG' di pojok kanan atas layar agar antarmuka bersih
      debugShowCheckedModeBanner: false,
      // Deklarasi Konfigurasi Tema Global: Mengatur standarisasi palet warna dan tipografi seluruh aplikasi
      theme: ThemeData(
        useMaterial3: true, // Mengaktifkan spesifikasi desain Material Design 3 modern
        // Generator skema warna harmonis otomatis yang diturunkan dari satu warna dasar (seed color)
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A8A), // Deklarasi variabel warna dasar: Biru Navy Kasir Profesional
          brightness: Brightness.light, // Mode kecerahan tema: Tampilan Terang (Light Mode)
        ),
        // Konfigurasi tema seragam untuk bilah navigasi atas (AppBar) di seluruh layar aplikasi
        appBarTheme: const AppBarTheme(
          centerTitle: true, // Memposisikan teks judul tepat di tengah bilah horizontal
          elevation: 2, // Efek ketinggian bayangan (shadow) di bawah bilah navigasi (2 dp)
          backgroundColor: Color(0xFF1E3A8A), // Warna latar belakang bilah AppBar: Biru Navy
          foregroundColor: Colors.white, // Warna teks judul dan ikon di atas bilah AppBar: Putih
        ),
      ),
      // Komponen/Widget Scaffold: Pondasi visual struktur layar (menyediakan slot AppBar dan Body)
      home: Scaffold(
        // Komponen/Widget AppBar: Bilah navigasi bagian atas halaman
        appBar: AppBar(
          // Komponen/Widget Text: Menampilkan label judul aplikasi pada bilah navigasi
          title: const Text('SmartKasir'),
        ),
        // Komponen/Widget Center: Memposisikan komponen anaknya (child) tepat di titik tengah layar
        body: const Center(
          // Komponen/Widget Text: Label teks informasi status kesiapan sistem dengan penataan gaya (TextStyle)
          child: Text(
            'SmartKasir Siap Dikonfigurasi!',
            style: TextStyle(
              fontSize: 18, // Deklarasi ukuran font teks: 18 point
              fontWeight: FontWeight.bold, // Ketebalan font teks: Tebal (Bold)
            ),
          ),
        ),
      ),
    );
  }
}
