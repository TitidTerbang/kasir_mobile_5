import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MaterialApp(
    home: CekPembelianPage(),
  ));
}

class CekPembelianPage extends StatefulWidget {
  const CekPembelianPage({super.key});

  @override
  _CekPembelianPage createState() => _CekPembelianPage();
}

class _CekPembelianPage extends State<CekPembelianPage> {
  // List untuk menyimpan jumlah pembelian sebagai string
  List<String> jumlahPembelianList = List.filled(2, '1'); // Menginisialisasi dengan 2 item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'PILIH PEMBAYARAN',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,

      ),
      
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
Container(
  margin: const EdgeInsets.all(20), // Margin 10 di setiap sudut
  color: const Color(0xFFDDE6ED).withOpacity(0.9), // Warna latar belakang opsional
  child: Padding(
    padding: const EdgeInsets.all(8.0), // Padding dalam container
    child: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      _buildItemCard(
                        index: 0,
                        namaProduk: 'BARANG 1',
                        totalProduk: 'Rp40.000',
                        jumlahPembelian: '2',
                        imagePath: 'assets/produk/barang_1.jpeg',
                      ),
                      const SizedBox(height: 10),
                      _buildItemCard(
                        index: 1,
                        namaProduk: 'BARANG 2',
                        totalProduk: 'Rp20.000',
                        jumlahPembelian: '1',
                        imagePath: 'assets/produk/barang_2.jpeg',
                      ),
                      // Tambahkan lebih banyak item sesuai kebutuhan
                      const SizedBox(height: 300),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        _buildTotalPembayaranSection(),
      ],
    ),
  ),
)



        ],
      ),
            bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_ios_new),
            label: 'Back',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Get.toNamed('/Profile'); // Mengganti dengan route untuk ProfilePage
          } else if (index == 1) {
            Get.offNamed('/Home'); // Mengganti dengan route untuk HomePage
          } else if (index == 2) {
            Get.back(); // Menggunakan Get.back() untuk kembali ke halaman sebelumnya
          }
        },
      ),
    );
  }

  Widget _buildItemCard({
    required int index,
    required String namaProduk,
    required String totalProduk,
    required String jumlahPembelian,
    required String imagePath,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            // Gambar produk
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                imagePath,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Informasi produk
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namaProduk,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("TOTAL: $totalProduk"),
                      Text("Qty: $jumlahPembelian"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalPembayaranSection() {
return Container(
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.white, // Warna background putih
    borderRadius: BorderRadius.circular(30), // Border radius yang membulat
  ),
  child: Column(
    children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'TOTAL PEMBAYARAN',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Rp60.000',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Warna tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Border radius untuk tombol
                ),
                padding: const EdgeInsets.symmetric(vertical: 16), // Padding untuk tombol
              ),
              onPressed: () {
                // Aksi untuk membuat pesanan
                Get.toNamed('/MemilihPembayaran'); // Mengganti dengan route untuk ProfilePage
              },
              child: const Text(
                'BUAT PESANAN',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Warna teks tombol
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  ),
);

  }
}
