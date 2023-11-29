# Jenio Dwi Setyo Favian Gian (2141720212) / 3F

---

## Hasil Praktikum1 Soal 2

![Screenshot](docs/Praktikum1.png)

---
## Hasil Praktikum1 Soal 3

![Screenshot](docs/Praktikum1soal3.gif)

## Jawaban Praktikum1 Soal 3
`substring` dan `catchError`!
1. substring : Metode substring digunakan pada objek String untuk mengambil potongan dari string tersebut. `substring(0, 450)` digunakan untuk mengambil karakter dari indeks 0 hingga indeks 449 dari string tersebut atau hanya mengambil 450 karakter dari respon HTTP yang didapatkan. 
2. catchError : Metode `catchError` digunakan dalam konteks Future (keluaran dari fungsi `getData()`). Jika Future menghasilkan error, maka blok kode dalam `catchError` akan dijalankan. Dalam hal ini, jika terjadi kesalahan selama pemanggilan `getData()`, blok kode `result = 'An error occurred'; setState(() {});` akan dieksekusi. Ini akan menetapkan string "An error occurred" ke variabel `result` dan kemudian memicu pembaruan ke tampilan melalui `setState`.

---

## Hasil Praktikum2 Soal 4

![Screenshot](docs/Praktikum2soal4.gif)

## Jawaban Praktikum2 Soal 4 Langkah 1 dan 2

1. returnOneAsync(), returnTwoAsync(), returnThreeAsync(): Tiga fungsi ini masing-masing mengembalikan objek Future dengan tipe data int. Setiap fungsi menunggu selama 3 detik menggunakan await Future.delayed(const Duration(seconds: 3)); sebelum mengembalikan nilai tertentu (1, 2, atau 3).
2. count(): Fungsi count merupakan sebuah fungsi Future yang juga menggunakan kata kunci async. Di dalamnya, ada variabel lokal total yang diinisialisasi dengan nilai 0. Kemudian, fungsi returnOneAsync() dipanggil dengan menggunakan await, yang berarti eksekusi fungsi ini akan ditunda hingga hasilnya siap. Nilai yang dikembalikan dari returnOneAsync() ditambahkan ke variabel total. Proses yang sama dilakukan untuk returnTwoAsync() dan returnThreeAsync(). Setelah semuanya selesai, nilai total diubah menjadi string dan disimpan di variabel result. Terakhir, fungsi setState dipanggil. Ini biasanya digunakan dalam Flutter untuk memberi tahu framework bahwa ada perubahan dalam state dan perlu memperbarui tampilan.

---

## Hasil Praktikum3 Soal 5

![Screenshot](docs/Praktikum3soal5.gif)

## Jawaban Praktikum3 Soal 5 Langkah 2

1. Variabel completer digunakan untuk mengontrol dan menyelesaikan suatu Future secara manual. Dengan menggunakan Completer, Anda dapat menentukan kapan suatu Future dianggap selesai (completed). Kemudian dalam method getNumber(), completer diinisialisasi sebagai objek Completer<int>, lalu dipanggil method calculate() yang menjalankan tugas yang memerlukan waktu. Setelah tugas selesai, completer.complete() digunakan untuk menyelesaikan Future terkait dengan nilai 42. Method getNumber mengembalikan completer.future, memungkinkan pengguna untuk menunggu hingga perhitungan selesai. Dengan demikian, kode ini menciptakan suatu struktur yang memberikan kendali manual terhadap penyelesaian suatu Future, berguna ketika kita ingin mengendalikan kapan suatu operasi asynchronous dianggap selesai dan nilai dari operasi tersebut dapat diakses.

---

## Hasil Praktikum3 Soal 6

![Screenshot](docs/Praktikum3soal6.gif)
---

## Jawaban Praktikum3 Soal 6 Langkah 2 dengan 5-6
1. Pada Langkah 5 perbedaannya terletak pada method `calculate()`. Kode sebelumnya tanpa meng-handle error secara eksplisit. Jika terjadi kesalahan selama penundaan, `completer.complete(42);` dijalankan tanpa meng-handle atau menyatakan jenis kesalahan yang mungkin terjadi. Untuk kode setelah diubah terdapat penambahan struktur try-catch. Jika terjadi kesalahan selama penundaan, `completer.completeError({});` dijalankan, yang menandakan bahwa terjadi kesalahan dan memberikan objek kosong sebagai payload error.
2. Pada Langkah 6 perbedaanya terletak pada `onPressed()`. Kode sebelumnya menggunakan `catchError` pada `Future` hasil dari `getNumber()`. Jika ada kesalahan, string "An error occurred" ditetapkan pada variabel `result`. Untuk kode setelah diubah menggunakan `blok` then dan `catchError` langsung pada pemanggilan `getNumber()`. Jika sukses, hasil perhitungan diubah menjadi string dan disetel pada variabel `result`. Jika ada kesalahan, string "An error occurred" ditetapkan pada variabel `result`.

---

## Hasil Praktikum4 Soal 7

![Screenshot](docs/Praktikum4soal7.gif)
---
