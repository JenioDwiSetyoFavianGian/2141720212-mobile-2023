# Jenio Dwi Setyo Favian Gian (2141720212) / 3F

---

## Hasil Praktikum_1

![Screenshot](docs/praktikum_1.gif)

---

## Penjelasan Langkah 4: Buat file data_layer.dart

Kode export 'plan.dart'; dan export 'task.dart'; dalam kode tersebut digunakan untuk membuat library. Dengan kata lain, kode tersebut memungkinkan untuk mengorganisir kode menjadi berbagai file dan kemudian menggabungkannya kembali. Dengan cara ini, semua kelas, fungsi, dan variabel dari plan.dart dan task.dart akan tersedia di dalam kelas yang memanggil 'data_layer.dart'. Ini membuat kode lebih rapi dan mudah dikelola.

---

## Penjelasan Langkah 6: buat plan_screen.dart

Variabel plan dalam kode tersebut digunakan untuk menyimpan data dari Plan. Plan mungkin adalah sebuah kelas yang berisi informasi tentang rencana atau tugas yang perlu dilakukan. Variabel ini digunakan dalam metode _buildList() dan _buildAddTaskButton() untuk membangun daftar tugas dan menambahkan tugas baru ke dalam daftar.

Mengenai mengapa plan dibuat sebagai konstanta (const Plan()), ini adalah cara untuk menginisialisasi variabel dengan nilai default. Dalam hal ini, Plan mungkin memiliki konstruktor default yang tidak memerlukan argumen apa pun. Menggunakan const berarti bahwa objek Plan ini tidak akan berubah setelah dibuat. Namun, plan nantinya akan diperbarui dengan Plan baru setiap kali ada perubahan (misalnya, saat menambahkan task baru), jadi meskipun awalnya dibuat sebagai const, nilai plan sendiri akan berubah seiring berjalannya waktu.

---

## Langkah 9: buat widget _buildTaskTile

Kode tersebut mendefinisikan sebuah widget yang menampilkan tugas dalam bentuk ListTile. ListTile adalah sebuah widget yang biasanya berisi hingga 3 baris teks, dan opsional leading dan trailing icons.

- leading: Checkbox(...) menampilkan sebuah kotak centang di awal ListTile. Kotak centang ini menunjukkan apakah tugas sudah selesai atau belum (task.complete). Jika pengguna mengklik kotak centang, maka status tugas akan diperbarui (setState(...)) dan UI akan diperbarui untuk mencerminkan perubahan tersebut.
- title: TextFormField(...) menampilkan sebuah field teks yang berisi deskripsi tugas (task.description). Jika pengguna mengubah teks dalam field ini, maka deskripsi tugas akan diperbarui (setState(...)) dan UI akan diperbarui untuk mencerminkan perubahan tersebut

Secara keseluruhan, kode tersebut membuat tampilan Todo List yang bisa memperbarui status dan deskripsi tugas. Setiap perubahan akan segera terlihat di UI, membuat aplikasi lebih responsif dan mudah digunakan.

---

## Penjelasan Langkah 11: Tambah Scroll Listener dan Langkah 13: tambah method dispose()

Langkah 11 - initState(): Metode initState() dipanggil tepat setelah widget dimasukkan ke dalam pohon widget (widget tree) dan sebelum build() dipanggil pertama kali. Ini adalah tempat yang tepat untuk melakukan inisialisasi yang berkaitan dengan BuildContext. Dalam kode tersebut, initState() digunakan untuk membuat ScrollController dan menambahkan listener kepadanya. Listener ini akan memindahkan fokus ke FocusNode baru setiap kali pengguna melakukan scroll.

Langkah 13 - dispose(): Metode dispose() dipanggil ketika widget ini dihapus dari pohon widget dan akan melepaskan semua sumber daya yang dimiliki oleh widget. Dalam kode Anda, dispose() digunakan untuk membuang ScrollController yang telah dibuat sebelumnya.

## Hasil Praktikum_2

![Screenshot](docs/praktikum_2.gif)