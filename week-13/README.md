# Jenio Dwi Setyo Favian Gian (2141720212) / 3F

---

## Hasil Praktikum_1

![Screenshot](docs/praktikum1.gif)

---

## Penjelasan Soal 5 Langkah 9

list digunakan untuk menyimpan dan memanipulasi data secara sinkron, sementara await for digunakan dalam asyncio untuk iterasi asinkron melalui objek iterable dalam fungsi asinkron, memungkinkan penanganan operasi yang memerlukan waktu.

---

## Hasil Praktikum_2

![Screenshot](docs/praktikum2.gif)

---

Langkah8: untuk menginisialisasi stream controller dan sink-nya. stream kemudian diambil dari controller dengan menggunakan numberStreamController.stream. Kemudian, listen digunakan pada stream untuk mendengarkan perubahan yang terjadi pada Stream. Ketika ada perubahan (saat angka baru ditambahkan ke dalam Stream), fungsi yang diberikan akan dipanggil. Di sini, nilai yang diterima dari Stream akan diperbarui dalam state dengan menggunakan setState, dan nilai terakhir lastNumber akan diperbarui dengan nilai dari Stream.

Langkah10: addRandomNumber() method yang bertujuan untuk menambahkan angka acak ke dalam Stream. Pertama, sebuah objek dari kelas Random diciptakan untuk menghasilkan angka acak. Kemudian, angka acak di-generate menggunakan nextInt(10) untuk mendapatkan angka random dari 0 hingga 9. Terakhir, angka tersebut ditambahkan ke dalam Sink yang ada di numberStream melalui method addNumberToSink().