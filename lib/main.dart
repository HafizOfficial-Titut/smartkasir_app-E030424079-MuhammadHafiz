// Mengimpor pustaka antarmuka Material Design utama dari framework Flutter
import 'package:flutter/material.dart';
// [PERUBAHAN TAHAP 7.4]: Ganti impor dashboard dengan halaman navigasi utama 4 menu
import 'pages/main_navigation_page.dart';

// Fungsi utama (entry point) aplikasi
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
          seedColor: const Color(0xFF1E3A8A), // Biru Navy Profesional Bisnis
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
          backgroundColor: Color(0xFF1E3A8A),
          foregroundColor: Colors.white,
        ),
      ),
      // [PERUBAHAN TAHAP 7.4]: Arahkan properti home ke MainNavigationPage()
      home: const MainNavigationPage(),
    );
  }
}
