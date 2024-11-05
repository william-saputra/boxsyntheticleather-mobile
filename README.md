# PBP F - 2024

Nama: William Matthew Saputra  
NPM: 2306165862

## **Tugas 7**
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.  

- **Stateless Widget**  
Widget yang tidak dapat berubah (_immutable_) setelah dibuat. Sehingga tampilan atau data di dalam widget ini bersifat tetap dan tidak dapat berubah selama siklus hidup widget tersebut. _Stateless widget_ cocok digunakan  untuk komponen UI yang statis atau tidak membutuhkan perubahan, seperti menampilkan judul, deskripsi, dan gambar tetap. Contohnya adalah `Text`, `Icon`, dan `Container`.  
- **Stateful Widget**  
Widget yang bersifat dinamis dan dapat berubah seiring waktu. Widget ini memiliki "_state_" yang dapat diubah, dan perubahan tersebut akan memperbarui tampilan UI sesuai dengan data terbaru. _Stateful Widget_ cocok untuk UI yang membutuhkan perubahan atau interaksi, seperti menampilkan status loading, daftar item yang dapat diperbarui, atau animasi. Contohnya adalah `Checkbox`, `Slider`, dan `TextField`.  
  
Perbedaan utama antara Stateless Widget dan Stateful Widget adalah pada kemampuan mereka untuk mempertahankan dan mengelola perubahan data (state).

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
#### `main.dart`  
- MaterialApp  
Widget utama yang membungkus seluruh aplikasi dan mengatur tema warna serta routing. Pada proyek ini, MaterialApp diatur dengan skema warna yang menggunakan warna dasar biru gelap `#2D46A2`, yang menjadi identitas visual aplikasi "Box Synthetic Leather".
- Scaffold  
Menyediakan struktur dasar halaman dengan AppBar di bagian atas dan Body di tengah, sebagai wadah utama untuk elemen-elemen di halaman utama aplikasi.
- AppBar  
Menampilkan bar di bagian atas aplikasi dengan judul "Box Synthetic Leather" dan menggunakan warna utama dari tema aplikasi.
- Column dan Row
Digunakan untuk mengatur tata letak widget; `Row` menampilkan `InfoCard` secara horizontal untuk informasi pengguna (NPM, Nama, dan Kelas), sementara `Column` digunakan untuk menampilkan daftar item dan pesan sambutan secara vertikal.
- GridView  
Menyusun widget `ItemCard` dalam bentuk grid dengan 3 kolom, menampilkan tombol fitur (Lihat Produk, Tambah Produk, Logout) dalam tata letak grid yang rapi dan mudah diakses.  

#### `menu.dart`  
- InfoCard (Custom Widget)  
Widget khusus untuk menampilkan informasi pengguna, seperti NPM, Nama, dan Kelas, dalam bentuk kartu.
- ItemHomepage (Model Class)  
Kelas model data yang menyimpan atribut seperti nama, ikon, dan warna latar belakang untuk setiap tombol di halaman utama. Kelas ini memudahkan pengaturan data tombol dalam struktur yang lebih rapih.
- ItemCard (Custom Widget)  
Menampilkan setiap item dari `ItemHomepage` dalam bentuk kartu dengan warna latar belakang berbeda sesuai jenis fitur (kuning untuk Lihat Item, biru untuk Tambah Item, dan merah untuk Logout). Kartu ini juga memiliki efek interaktif berupa Snackbar yang muncul saat tombol ditekan, memberikan `feedback` kepada pengguna.
- Material dan InkWell  
`Material` memberikan tampilan material design pada kartu, sementara `InkWell` menambahkan efek tapatau _ripple_ saat tombol ditekan, membuat interaksi menjadi lebih responsif dan menarik.  
- ScaffoldMessenger dan Snackbar  
Digunakan untuk menampilkan pesan sementara di bagian bawah layar, memberi notifikasi kepada pengguna setiap kali tombol ditekan (Lihat Produk, Tambah Produk, Logout), memperkaya pengalaman pengguna.  

###   Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.  

Fungsi `setState()` dalam Flutter digunakan untuk memperbarui tampilan UI pada _widget_ yang bersifat **Stateful**. Ketika `setState()` dipanggil, Flutter akan melakukan render ulang pada bagian dari UI yang terpengaruh oleh perubahan _state_, sehingga tampilannya dapat mengikuti dat ayang terbaru.  

Hanya variabel yang disimpan dalam _State widget_ yang dapat dipengaruhi oleh `setState()`. Contohnya:

- Variabel dinamis seperti nilai counter, status toggle, input pengguna, data dari API, atau opsi pilihan pengguna.
- Variabel yang mempengaruhi UI secara langsung seperti variabel counter untuk menghitung jumlah klik, daftar item yang bertambah atau berkurang, nilai toggle (aktif/nonaktif), atau warna yang berubah berdasarkan interaksi pengguna.


### Jelaskan perbedaan antara const dengan final.
- **`const`**  
`const` adalah variabel yang digunakan untuk mendeklarasikan nilai yang konstan dan tidak akan berubah. Variabel `const` harus diberikan nilai yang sudah diketahui pada saat kompilasi (_compile-time constant_). `const` cocok digunakan untuk nilai statis, seperti angka, string, atau list yang isinya tidak akan pernah diubah.
- **`final`**  
`final` adalah variabel yang digunakan untuk mendeklarasikan nilai yang hanya diinisialisasi satu kali dan tidak bisa diubah setelahnya. `final` cocok untuk situasi di mana nilai diperoleh saat runtime. `final` biasa digunakan untuk nilai yang perlu dihitung atau diperoleh pada saat aplikasi berjalan, seperti waktu saat ini dan data acak

## Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
### Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.  

1. **Instalasi Flutter di Windows**  
    1. **Unduh dan Ekstrak Flutter SDK**: Download Flutter SDK dari situs resmi flutter.dev dan ekstrak ke direktori yang diinginkan.
    2.  **Tambahkan Flutter ke PATH**: Buka Command Prompt atau PowerShell dan tambahkan Flutter ke PATH.
    Gantilah `C:\path\to\flutter` sesuai lokasi folder Flutter SDK yang sudah di ekstrak.
    3. **Verifikasi Instalasi Flutter**  
    Pastikan Flutter terinstal dengan benar dengan menjalankan perintah `flutter doctor
    `
2. **Instalasi IDE untuk Pengembangan Flutter**  
    - **Visual Studio Code**: Direkomendasikan untuk pengembangan yang ringan dan fleksibel. Install ekstensi Flutter dan Dart di VS Code.  
    - **Android Studio**: Diperlukan jika ingin menjalankan emulator Android di Windows. Pastikan plugin Flutter dan Dart juga terinstal di Android Studio.  
3. **Membuat Proyek Flutter Baru**
    1. Buka Command Prompt atau PowerShell
        - Arahkan ke direktori tempat penyimpanan proyek.
    2. Buat Proyek Baru
        - Jalankan perintah berikut untuk membuat proyek Flutter baru  
        ```
        flutter create boxsynthethicleather
        cd boxsynthethicleather
        ```
    3. Jalankan Proyek  
        Untuk menjalankan proyek pada emulator atau perangkat fisik yang terhubung, gunakan perintah:
        ```
        flutter run
        ```
4. **Pengaturan Tampilan Utama (main.dart)** 
    - Konfigurasi Tema: Sesuaikan tampilan dan nuansa aplikasi agar sesuai dengan tema E-Commerce.
    - File `menu.dart`: Tambahkan file `menu.dart` ke dalam folder lib, dan pindahkan widget `MyHomePage`ke dalam file tersebut.


 ### Membuat tiga tombol sederhana dengan ikon dan teks untuk:
 - Melihat daftar produk (Lihat Daftar Produk)
 - Menambah produk (Tambah Produk)
 - Logout (Logout)

1. **Konfigurasi Item pada Home Page**
```dart
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Item", Icons.mood),
    ItemHomepage("Tambah Item", Icons.add),
    ItemHomepage("Logout", Icons.logout),
  ];
```
2. **Tampilkan tombol pada GridView**
```dart
GridView.count(
    primary: true,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 3,
    shrinkWrap: true,
    children: items.map((ItemHomepage item) {
        return ItemCard(item);
    }).toList(),
    ),
```
### Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).  
Implementasi warna yang berbeda dilakukan dengan membuat fungsi `_getItemColor` dalam `ItemCard`. Nantinya warna akan ditentukan berdasarkan `item.name`.  
```dart
Color _getItemColor() {
    switch (item.name) {
      case "Lihat Item":
        return Colors.yellow;
      case "Tambah Item":
        return Colors.blue;
      case "Logout":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
```  
#### Memunculkan Snackbar dengan tulisan:
- "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
- "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
- "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.

Snackbar yang muncul ketika tombol ditekan dapat diimplementasikan dengan menggunakan `SnackfoldMessenger`
```dart
onTap: () {
    ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
        SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")),
    );
    },
```