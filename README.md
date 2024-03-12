# TP1PROVIS

# Penjelasan Implementasi OOP dan Asyncronus:
1. **Object-Oriented Programming (OOP):**
   - Kode tersebut menggunakan konsep OOP dengan membuat sebuah kelas `ConcertTicketOrder` yang merepresentasikan pemesanan tiket konser.
   - Kelas `ConcertTicketOrder` memiliki atribut-atribut seperti `orderId`, `customerName`, `quantity`, `concertName`, dan `status`. Ini adalah contoh penggunaan properti objek dalam OOP.
   - Terdapat dua metode dalam kelas tersebut: `processOrder()` dan `cancelOrder()`. Ini menunjukkan penggunaan metode objek dalam OOP.
   - Penggunaan constructor untuk inisialisasi objek dari kelas tersebut ketika pesanan tiket konser dibuat.
   - Penerapan enkapsulasi dengan membuat atribut `status` sebagai `private` dan memberikan akses kepadanya melalui metode `getStatus()`. Ini adalah contoh penggunaan enkapsulasi dalam OOP.

2. **Asynchronous:**
   - Penggunaan metode `processOrder()` dan `cancelOrder()` dalam kelas `ConcertTicketOrder` menunjukkan penggunaan asynchronous. Dalam contoh ini, kita menggunakan `async` dan `await` untuk menunggu proses yang berjalan dalam `Future`.
   - Setiap metode menggunakan `await` untuk menunggu selesainya proses tertentu. Misalnya, dalam metode `processOrder()`, kita menggunakan `await Future.delayed(Duration(seconds: 2))` untuk mensimulasikan proses pemrosesan pesanan yang berlangsung selama 2 detik sebelum melanjutkan ke langkah berikutnya.
   - Dengan menggunakan asynchronous, program dapat melanjutkan menjalankan kode lain tanpa harus menunggu proses yang sedang berjalan selesai terlebih dahulu. Hal ini berguna untuk aplikasi yang memiliki banyak operasi yang memakan waktu, seperti proses jaringan atau pembacaan file, sehingga tidak memblokir UI atau penggunaan sumber daya lainnya.
  
# Screenshot Hasil Program
![output](https://github.com/rifannylyst/TP1PROVIS/assets/147616851/265bc84b-9a69-4923-8722-cebb896f3d73)
