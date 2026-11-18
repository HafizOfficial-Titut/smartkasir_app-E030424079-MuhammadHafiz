// Mengimpor pustaka antarmuka Material Design utama dari framework Flutter
import 'package:flutter/material.dart';
// [PERUBAHAN TAHAP 7.3]: Mengimpor berkas halaman DashboardPage dari folder pages
import 'pages/dashboard_page.dart';

// Fungsi utama (entry point) tempat pertama kali aplikasi dijalankan
void main() {
  runApp(const SmartKasirApp());
}

// Deklarasi kelas root aplikasi turunan StatelessWidget
class SmartKasirApp extends StatelessWidget {
  const SmartKasirApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SmartKasir',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1E3A8A), // Biru Navy Kasir Profesional
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
          backgroundColor: Color(0xFF1E3A8A),
          foregroundColor: Colors.white,
        ),
      ),
      // [PERUBAHAN TAHAP 7.3]: Mengarahkan properti home langsung ke halaman DashboardPage()
      home: const DashboardPage(),
    );
  }
}
