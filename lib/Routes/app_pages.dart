import 'package:flutter/material.dart';

// LOGIN
import '../app/modules/login/views/login_page.dart';
import '../app/modules/login/views/lupa_password_page.dart';
import '../app/modules/login/views/sign_up_page.dart';
import '../app/modules/landing_page/views/pilih_mode_page.dart';
import '../app/modules/landing_page/views/pilih_toko_page.dart';
import '../app/modules/landing_page/views/buat_toko_page.dart';
import '../app/modules/landing_page/views/buka_undangan_page.dart';
import '../app/modules/landing_page/views/terima_undangan_page.dart';
import '../app/modules/landing_page/views/pilih_tempat_kerja_page.dart';

// HOMEPAGE
import '../app/modules/home/views/home_page.dart';
// import '../app/modules/home/views/homepage/homepage_pegawai_page.dart';

// KELOLA AKUN PEGAWAI
import '../app/modules/kelola_akun_pegawai/views/activity_pegawai_page.dart';
import '../app/modules/kelola_akun_pegawai/views/detail_karyawan_page.dart';
import '../app/modules/kelola_akun_pegawai/views/hapus_akun_page.dart';
import '../app/modules/kelola_akun_pegawai/views/kelola_akun_pegawai_page.dart';
import '../app/modules/kelola_akun_pegawai/views/tambah_pegawai_page.dart';

// OTHER
import '../app/modules/others/views/all_activity_page.dart';
import '../app/modules/others/views/mail_open_page.dart';
import '../app/modules/others/views/mail_page.dart';

// PROFILE
import '../app/modules/profile/views/activity_page.dart';
import '../app/modules/profile/views/change_password_page.dart';
import '../app/modules/profile/views/change_profile_page.dart';
import '../app/modules/profile/views/profile_page.dart';

// STORAGE
import '../app/modules/storage/views/edit_produk_page.dart';
import '../app/modules/storage/views/hapus_produk_page.dart';
import '../app/modules/storage/views/storage_page.dart';
import '../app/modules/storage/views/tambah_produk_page.dart';

// TRANSAKSI
import '../app/modules/pembayaran/views/cek_pembelian_page.dart';
import '../app/modules/pembayaran/views/konfirmasi_cash_page.dart';
import '../app/modules/pembayaran/views/konfirmasi_debit_page.dart';
import '../app/modules/pembayaran/views/memilih_pembayaran_page.dart';
import '../app/modules/pembayaran/views/pembayaran_berhasil_page.dart';
import '../app/modules/pembayaran/views/struk_page.dart';
import '../app/modules/transaksi/views/transaksi_page.dart';

import 'app_routes.dart'; // Import file rute

class AppPages {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // LOGIN
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case AppRoutes.lupaPassword:
        return MaterialPageRoute(builder: (_) => const LupaPasswordPage());
      case AppRoutes.signUp:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case AppRoutes.pilihMode:
        return MaterialPageRoute(builder: (_) => const PilihModePage());
      case AppRoutes.pilihToko:
        return MaterialPageRoute(builder: (_) => const PilihTokoPage());
      case AppRoutes.buatToko:
        return MaterialPageRoute(builder: (_) => const BuatTokoPage());
      case AppRoutes.bukaUndangan:
        return MaterialPageRoute(builder: (_) => const BukaUndanganPage());
      case AppRoutes.terimaUndangan:
        return MaterialPageRoute(builder: (_) => const TerimaUndanganPage());
      case AppRoutes.pilihTempatKerja:
        return MaterialPageRoute(builder: (_) => const PilihTempatKerjaPage());

      // HOMEPAGE
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      // case AppRoutes.homepagePegawai:
      //   return MaterialPageRoute(builder: (_) => HomepagePegawaiPage());

      // KELOLA AKUN PEGAWAI
      case AppRoutes.kelolaAkun:
        return MaterialPageRoute(builder: (_) => const KelolaAkunPegawaiPage());
      case AppRoutes.tambahPegawai:
        return MaterialPageRoute(builder: (_) => const TambahPegawaiPage());
      case AppRoutes.activityPegawai:
        return MaterialPageRoute(builder: (_) => const ActivityPegawaiPage());
      case AppRoutes.detailKaryawan:
        return MaterialPageRoute(builder: (_) => const DetailKaryawanPage());
      case AppRoutes.hapusAkun:
        return MaterialPageRoute(builder: (_) => const HapusAkunPage());

      // OTHER
      case AppRoutes.allActivity:
        return MaterialPageRoute(builder: (_) => const AllActivityPage());
      case AppRoutes.mailOpen:
        return MaterialPageRoute(builder: (_) => const MailOpenPage());
      case AppRoutes.mail:
        return MaterialPageRoute(builder: (_) => const MailPage());

      // PROFILE
      case AppRoutes.profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case AppRoutes.changeProfile:
        return MaterialPageRoute(builder: (_) => const ChangeProfilePage());
      case AppRoutes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePasswordPage());
      case AppRoutes.activityProfile:
        return MaterialPageRoute(builder: (_) => const ActivityPage());

      // STORAGE
      case AppRoutes.storage:
        return MaterialPageRoute(builder: (_) => const StoragePage());
      case AppRoutes.editProduk:
        return MaterialPageRoute(builder: (_) => const EditProdukPage());
      case AppRoutes.hapusProduk:
        return MaterialPageRoute(builder: (_) => const HapusProdukPage());
      case AppRoutes.tambahProduk:
        return MaterialPageRoute(builder: (_) => const TambahProdukPage());

      // TRANSAKSI
      case AppRoutes.cekPembelian:
        return MaterialPageRoute(builder: (_) => const CekPembelianPage());
      case AppRoutes.konfirmasiCash:
        return MaterialPageRoute(builder: (_) => const KonfirmasiCashPage());
      case AppRoutes.konfirmasiDebit:
        return MaterialPageRoute(builder: (_) => const KonfirmasiDebitPage());
      case AppRoutes.memilihPembayaran:
        return MaterialPageRoute(builder: (_) => const MemilihPembayaranPage());
      case AppRoutes.pembayaranBerhasil:
        return MaterialPageRoute(builder: (_) => const PembayaranBerhasilPage());
      case AppRoutes.struk:
        return MaterialPageRoute(builder: (_) => const StrukPage());
      case AppRoutes.transaksi:
        return MaterialPageRoute(builder: (_) => const TransaksiPage());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
