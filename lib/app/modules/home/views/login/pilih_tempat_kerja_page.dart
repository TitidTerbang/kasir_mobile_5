import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PilihTempatKerjaPage extends StatelessWidget {
  const PilihTempatKerjaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PEKERJAAN KAMU',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey, // Warna header
      ),
      body: Stack(
        children: [
                    // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'), // Ganti dengan path gambar Anda
                fit: BoxFit.cover, // Mengatur agar gambar menutupi seluruh halaman
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  // Button 1: Tambah Akun
                SizedBox(
                    height: 150,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {

                         Get.offNamed('/home'); // Mengganti dengan route untuk HomePage
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD9D9D9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Center(
                              child: Icon(
                                Icons.business_center,
                                color: Color(0xFF28374C),
                                size: 40,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Center(
                              child: Text(
                                'TOKO SUKSES',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF28374C),
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 500),
                ],
              ),
            ),
          ),
          // Floating Action Button (FAB) with '+' icon
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Action saat tombol '+' ditekan

               Get.toNamed('/BukaUndanganPage'); // Mengganti dengan route untuk HomePage
              },
              backgroundColor: const Color(0xFF28374C),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
