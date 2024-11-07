# PBP F - 2024

Nama: William Matthew Saputra  
NPM: 2306165862

<details>
<summary>Tugas 7 </summary>

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

</details>

<details>
<summary>Tugas 8</summary>

## **Tugas 8**  

### Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?  

`const` di Flutter digunakan untuk membuat objek immutable yang nilainya tetap sama selama runtime, sehingga bisa dioptimalkan oleh Flutter. Keuntungannya dari `const` adalah performa lebih baik dan penghematan memori, karena objek `const` hanya dibuat sekali dan tidak perlu di-rebuild.   

`const` baik digunakan pada widget yang tidak akan berubah, seperti Text, Padding, Icon, atau Container yang hanya memiliki warna dan ukuran yang bersifat statis. Selain itu, `const` juga baik digunakan untuk nilai atau objek yang nilainya tidak akan berubah selama apliaksi beroperasi, misalnya warna, padding, atau margin yang konstan.  

`const` tidak baik digunakan pada widget yang dinamik karena widget tersebut memiliki nilai yang akan berubah sesuai state dari aplikasi. Contohnya adalah text yang berubah tergantung dari interaksi pengguna dengan aplikasi. Selain itu `const` sebaiknya juga tidak digunakan ketika kita membutuhkan fleksibilitas pada komponen aplikasi berdasarkan interaksi user atau respon API.  

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!  

Row dan Column adalah widget di Flutter yang digunakan untuk menyusun elemen UI secara vertikal dan horizontal.  
- Column  
Column mengatur widget _child_ secara vertikal sehingga cocok untuk elemen - elemen yang bertumpuk secara vertikal. Column memiliki properti seperti `mainAxisAlignment` (untuk mengatur alignment pada sumbu vertikal) dan `crossAxisAlignment` (untuk sumbu horizontal). Contoh implementasi:
```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Product Name: $_product'),
    Text('Price: $_price'),
    Text('Description: $_description'),
    Text('Thickness: $_thickness'),
    Text('User Reviews: $_usereviews'),
    Text('User Ratings: $_ratings'),
  ],
),  
```

- Row  
Row mengautr widget _child_ secara horizontal sehingga cocok untuk menempatkan elemen - elemen dalam satu baris. Row memiliki properti `mainAxisAlignment` (untuk mengatur alignment pada sumbu horizontal) dan `crossAxisAlignment` (untuk sumbu vertikal). Contoh implementasi:  
```dart
Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      InfoCard(title: 'NPM', content: npm),
      InfoCard(title: 'Name', content: name),
      InfoCard(title: 'Class', content: className),
    ],
  )
```  

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Halaman form saya menggunakan input `TextFormField` dan `ElevatedButton`. `TextFormField` digunakan untuk menerima berbagai jenis input teks dari pengguna, seperti Product Name, Price, Description, Thickness, User Reviews, dan User Ratings. Masing - masing field ini dilengkapi dengan validasi untuk memeriksa apakah input kosong atau apakah input berupa angka (jika diperlukan). `ElevatedButton` digunakan sebagai tombol untuk menyimpan data yang telah diisi pengguna. Tombol ini mengaktifkan validasi form dan menampilkan popup konfirmasi jika semua data valid.  

Ada banyak elemen input flutter yang belum saya manfaatkan untuk tugas ini, seperti `DropdownButtonFormField`, `Checkbox`, `Radio`, `Swicth`, `Slider`, `DatePicker`, dan `TimePicker`.  

###  Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?  

Ya, saya sudah mengamplikasikan tema pada aplikasi yang saya buat. Dalam aplikasi saya tema diatur di file `main.dart` dengan menggunakan `ThemeData`. Berikut adalah kodenya:  
```dart
ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xFF2D46A2), // Set primary color to #2d46a2
  ).copyWith(
    secondary: Color(0xFF2D46A2), // Set secondary color to #2d46a2
  ),
  useMaterial3: true,
),
``` 
- `colorScheme`: Menggunakan `ColorScheme.fromSeed` dengan warna utama (seedColor) yang ditentukan sebagai Color(0xFF2D46A2). Hal ini digunakan untuk menetapkan warna utama yang konsisten di seluruh aplikasi untuk elemen seperti AppBar, tombol, dan ikon yang menggunakan warna tema.  
- `secondary`: Warna sekunder juga diatur sama dengan warna utama untuk menjaga keseragaman warna.  
- `useMaterial3`: Mengaktifkan desain Material 3, yang memberikan style dan tampilan modern untuk komponen UI dengan konsisten.  

###  Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?  

Untuk menangani navigasi pada aplikasi dengan banyak halaman saya menggunakan widget `Navigator` dengan beberapa metode berikut:
- `Navigator.push()`: Menambahkan halaman (route) baru ke atas stack, membuat halaman tersebut ditampilkan di atas halaman yang sudah ada.  
```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);
``` 
- `Navigator.pop()`: Menghapus halaman teratas dari stack, sehingga kita kembali ke halaman sebelumnya.
```dart
Navigator.pop(context);
```
- `Navigator.pushReplacement()`: Mengganti halaman teratas dengan halaman baru tanpa menambah stack, yang berguna untuk navigasi tanpa mengisi stack dengan terlalu banyak halaman.
```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomePage()),
);
```
- Membuat Drawer Menu untuk memudahkan navigasi antar halaman pada aplikasi dengan cara membuat widget `Drawer` dengan beberapa `ListTile` untuk mengarahkan pengguna ke halaman yang berbeda. Setelah itu, gunakan   `Navigator.pushReplacement` dalam setiap `ListTile` untuk mengganti halaman dengan halaman yang dituju, tanpa harus menambahkan terlalu banyak halaman di stack. 

## Implementasi  
###  Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan ketentuan sebagai berikut
1. **Buat page baru untuk form**    
    - Membuat file baru dengan nama `productentry_form.dart` pada direktori `lib/widgets`. 
    - Di dalam file ini, buat kelas `ProductEntryFormPage` yang merupakan `StatefulWidget`. Widget ini akan menyimpan input pengguna dan dapat mengubah tampilannya berdasarkan interaksi pengguna.
2. **Susun struktur scaffold**  
    - Kit abisa menggunakan Scaffold untuk membangun struktur dasar halaman, yang mencakup AppBar, Drawer, dan body.
    - Tambahkan judul "Form Tambah Product" di dalam AppBar.
    - Gunakan `LeftDrawer` yang telah dibuat sebelumnya sebagai navigasi samping (drawer) aplikasi.
3. **Buat Form Input Data**  
    - Gunakan widget `Form` sebagai wadah untuk elemen-elemen input.
    - Buat variabel `_formKey` dari `GlobalKey<FormState>` untuk validasi form secara keseluruhan.
    - Gunakan `SingleChildScrollView` sebagai child dari Form agar halaman form bisa di-scroll jika konten melebihi ukuran layar.  

###  Memakai minimal tiga elemen input, yaitu name, amount, description. Tambahkan elemen input sesuai dengan model pada aplikasi tugas Django yang telah kamu buat.

1. **Definisikan Variabel State untuk Menyimpan Input**  
    - Buat variabel di dalam kelas `_ProductEntryFormPageState` untuk setiap field input yang akan  digunakan: `_product`, `_price`, `_description`, `_thickness`, `_usereviews`, dan `_ratings`.
2. **Tambahkan TextFormField untuk Setiap Input**  
    - Menambahkan `TextFormField` di dalam Column untuk setiap input
    <details>
    <summary>Kode</summary>

    ```dart
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Price",
          labelText: "Price",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onChanged: (String? value) {
          setState(() {
            _price = int.tryParse(value ?? '0') ?? 0;
          });
        },
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Price tidak boleh kosong!";
          }
          if (int.tryParse(value) == null) {
            return "Price harus berupa angka bulat!";
          }
          return null;
        },
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Description",
          labelText: "Description",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onChanged: (String? value) {
          setState(() {
            _description = value!;
          });
        },
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Description tidak boleh kosong!";
          }
          return null;
        },
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Thickness",
          labelText: "Thickness",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onChanged: (String? value) {
          setState(() {
            _thickness = double.tryParse(value ?? '0.0') ?? 0.0;
          });
        },
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Thickness tidak boleh kosong!";
          }
          if (double.tryParse(value) == null) {
            return "Thickness harus berupa angka!";
          }
          return null;
        },
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "User Reviews",
          labelText: "User Reviews",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onChanged: (String? value) {
          setState(() {
            _usereviews = value!;
          });
        },
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Description tidak boleh kosong!";
          }
          return null;
        },
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "User Ratings",
          labelText: "User Ratings",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        onChanged: (String? value) {
          setState(() {
            // _ratings = int.parse(value ?? '0');
            _ratings = int.tryParse(value ?? '0') ?? 0;
          });
        },
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "User ratings tidak boleh kosong!";
          }
          if (int.tryParse(value) == null) {
            return "User ratings harus berupa angka bulat!";
          }
          return null;
        },
      ),
    ),
    ```
    </details>

###  Memiliki sebuah tombol Save.  
1. **Mengatur tampilan tombol**  
Tombol Save yang menggunakan `ElevatedButton` bisa diatur stylenya seperti kode berikut: 
    ```dart
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Theme.of(context).colorScheme.primary,
      ),
    ),
    ```

2. **Fungsi `onPressed`**  
Fungsi `onPressed` akan memvalidasi form, menampilkan dialog konfirmasi, dan mereset form  ketika dipencet. 
    ```dart
    onPressed: () {
      if (_formKey.currentState!.validate()) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Product berhasil tersimpan'),
              content: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Product Name: $_product'),
                    Text('Price: $_price'),
                    Text('Description: $_description'),
                    Text('Thickness: $_thickness'),
                    Text('User Reviews: $_usereviews'),
                    Text('User Ratings: $_ratings'),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.pop(context);
                    _formKey.currentState!.reset();
                  },
                ),
              ],
            );
          },
        );
      }
    },
    ```

###  Setiap elemen input di formulir juga harus divalidasi dengan ketentuan sebagai berikut:
 - **Setiap elemen input tidak boleh kosong**  
 ```dart
 validator: (String? value) {
  if (value == null || value.isEmpty) {
    return "Thickness tidak boleh kosong!";
  }
  return null;
 }
 ```
 - **Setiap elemen input harus berisi data dengan tipe data atribut modelnya**  
 ```dart
  validator: (String? value) {
   if (double.tryParse(value) == null) {
    return "Thickness harus berupa angka!";
    }
  return null;
  }
```  

### Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.  

Untuk mengarahkan pengguna ke halaman form tambah item baru ketika tombol "Tambah Product" ditekan pada halaman utama, kita dapat menggunakan `Navigator.push()` pada event handler tombol tersebut.  
1. Buat `productentry_form.dart` pada direktori `lib`.  
2. Tambahkan tombol Tambah Product pada halaman utama
3. Atur navigasi dengan `Navigator.push()`  
Di dalam kelas `ItemCard`, kita memanfaatkan metode `Navigator.push()` untuk mendorong halaman `ProductEntryFormPage` ke dalam stack ketika item "Tambah Product" ditekan. Nantinya halaman `ProductEntryFormPage` ditampilkan di atas halaman utama. Berikut adalah kodenya:
```dart
class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  Color _getItemColor() {
    switch (item.name) {
      case "Lihat Item":
        return Colors.yellow;
      case "Tambah Product":
        return Colors.blue;
      case "Logout":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _getItemColor(),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")),
            );
          if (item.name == "Tambah Product") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductEntryFormPage()),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

###  Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.

Pop-up bisa ditampilkan setelah tombol save yang ditekan pada halaman formulir tambah product dengan menggunakan `showDialog`. Berikut adalah kodenya:  
```dart
onPressed: () {
  if (_formKey.currentState!.validate()) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Product berhasil tersimpan'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product Name: $_product'),
                Text('Price: $_price'),
                Text('Description: $_description'),
                Text('Thickness: $_thickness'),
                Text('User Reviews: $_usereviews'),
                Text('User Ratings: $_ratings'),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
                _formKey.currentState!.reset();
              },
            ),
          ],
        );
      },
    );
  }
},
```

###  Membuat sebuah drawer pada aplikasi dengan ketentuan sebagai berikut:
- **Drawer minimal memiliki dua buah opsi, yaitu Halaman Utama dan Tambah Item**  
`ListTile` pertama dengan ikon `home_outlined` dan teks "Halaman Utama". Ketika ditekan, akan mengarahkan pengguna ke `MyHomePage` menggunakan `Navigator.pushReplacement`. Ini menggantikan halaman saat ini dengan halaman utama sehingga pengguna dapat kembali ke halaman utama.  
`ListTile` kedua dengan ikon `shopping_cart` dan teks "Tambah Product".
Ketika ditekan, program akan mengarahkan pengguna ke `ProductEntryFormPage` (form tambah produk) menggunakan `Navigator.push`. Nantinya hal ini menampilkan halaman form baru di atas halaman saat ini.

- **Ketika memiih opsi Halaman Utama, maka aplikasi akan mengarahkan pengguna ke halaman utama**  
  ```dart
  ListTile(
    leading: const Icon(Icons.home_outlined),
    title: const Text('Halaman Utama'),
    // Bagian redirection ke MyHomePage
    onTap: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    },
  ),
  ```
- **Ketika memiih opsi Tambah Item, maka aplikasi akan mengarahkan pengguna ke halaman form tambah item baru**  
```dart
  ListTile(
    leading: const Icon(Icons.shopping_cart),
    title: const Text('Tambah Product'),
    // Bagian redirection ke ProductEntryFormPage
    onTap: () {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ProductEntryFormPage(),
        ),
      );
    },
  ),
  ```
</details>