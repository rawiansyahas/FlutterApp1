import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tugas4tpm/MyHomePage.dart';
import 'StopWatchPage.dart';

class BantuanPage extends StatefulWidget {
  @override
  _MyBantuanPage createState() => _MyBantuanPage();
}

class _MyBantuanPage extends State<BantuanPage> {
  set currentIndex(int currentIndex) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Petunjuk penggunaan aplikasi
            const Text(
              '''
              Panduan Pengguna Aplikasi Tugas TPM 2
              Selamat datang di Aplikasi Tugas TPM 2! Aplikasi ini dirancang untuk memberikan berbagai fungsi menarik yang mencakup daftar anggota, 
              perhitungan bilangan prima, pengukuran luas dan keliling segitiga, daftar situs rekomendasi, dan manajemen favorit. 
              Berikut ini adalah panduan penggunaan aplikasi untuk membantu Anda memaksimalkan penggunaan fitur yang tersedia.

              1. Halaman Login
              Sebelum mengakses fitur-fitur aplikasi, Anda harus melakukan login:

              Masukkan username dan password Anda.
              Klik tombol login untuk melanjutkan.
              2. Halaman Utama
              Setelah login, Anda akan diarahkan ke Halaman Utama. Di halaman ini, Anda akan menemukan lima menu utama:

              a. Nama Anggota
              Fungsi: Menampilkan daftar anggota tim.
              Cara Mengakses: Klik pada tombol "Nama Anggota".
              b. Bilangan Prima
              Fungsi: Aplikasi untuk menghitung bilangan prima.
              Cara Mengakses: Klik pada tombol "Bilangan Prima" untuk memulai perhitungan.
              c. Luas dan Keliling Segitiga
              Fungsi: Penghitung luas dan keliling segitiga.
              Cara Mengakses: Klik pada tombol "Luas dan Volume Segitiga" untuk memulai perhitungan.
              d. Daftar Situs
              Fungsi: Menampilkan daftar situs rekomendasi lengkap dengan gambar dan link.
              Cara Mengakses: Klik pada tombol "Daftar Situs" untuk melihat daftar situs yang direkomendasikan.
              e. Favorit
              Fungsi: Mengelola daftar favorit Anda.
              Cara Mengakses: Klik pada tombol "Favorit" untuk mengakses dan mengelola favorit Anda.
              3. Bottom Navigation Bar
              Di bagian bawah layar, terdapat Bottom Navigation Bar yang terdiri dari tiga menu:

              a. Stopwatch
              Fungsi: Fitur stopwatch untuk pengukuran waktu.
              Cara Mengakses: Klik pada ikon Stopwatch untuk menggunakan fitur pengukuran waktu.
              b. Home
              Fungsi: Kembali ke Halaman Utama.
              Cara Mengakses: Klik pada ikon Home untuk kembali ke layar utama.
              c. Bantuan
              Fungsi: Menyediakan informasi tentang cara penggunaan aplikasi dan opsi untuk logout.
              Cara Mengakses: Klik pada ikon Bantuan untuk melihat panduan penggunaan dan melakukan logout.
              4. Cara Menggunakan Menu Bantuan
              Menu Bantuan menyediakan Anda panduan penggunaan aplikasi dan opsi untuk logout:

              Di dalam menu Bantuan, Anda akan menemukan instruksi detil tentang cara menggunakan setiap fitur dalam aplikasi.
              Untuk melakukan logout, pilih opsi logout yang tersedia di dalam menu Bantuan.
              Dengan mengikuti panduan ini, Anda dapat dengan mudah mengakses dan memanfaatkan semua fitur yang tersedia di Aplikasi Tugas TPM 2. 
              
              Selamat menggunakan aplikasi!
              
              ''',
              style: TextStyle(fontSize: 10),
            ),
            // Tombol log out
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman login dan hapus semua rute di atasnya
                Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false);
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: EdgeInsets.all(16),
            gap: 10,
            onTabChange: (index1) {
              print(index1);
              setState(() {
                currentIndex = index1;
              });
              switch (index1) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StopWatchPage(),
                    ),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                  break;
                case 2:
                  break;
              }
            },
            tabs: const [
              GButton(
                icon: Icons.watch,
                text: 'Stopwatch',
              ),
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.help,
                text: 'Bantuan',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
