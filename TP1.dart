import 'dart:async';

// Enum untuk status pemesanan tiket
enum TicketStatus { pending, processing, confirmed, cancelled }

// Class untuk merepresentasikan pemesanan tiket konser
class ConcertTicketOrder {
  final int orderId;
  final String customerName;
  final int quantity;
  final String concertName;
  TicketStatus status;

  ConcertTicketOrder(this.orderId, this.customerName, this.quantity, this.concertName)
      : status = TicketStatus.pending;

  // Metode untuk memproses pemesanan tiket
  Future<void> processOrder() async {
    print('--------------------------------------------------');

    print('Pesanan Tiket #$orderId untuk $concertName dari $customerName sedang diproses...');

    status = TicketStatus.processing;
    await Future.delayed(Duration(seconds: 2));

    print('Pesanan Tiket #$orderId sedang diproses...');

    // Misalnya, di sini dapat dilakukan pemrosesan pembayaran, validasi, dll.

    status = TicketStatus.confirmed;
    await Future.delayed(Duration(seconds: 1));

    print('Pesanan Tiket #$orderId telah dikonfirmasi untuk $concertName oleh $customerName.');

    print('--------------------------------------------------');
  }

  // Metode untuk membatalkan pemesanan tiket
  Future<void> cancelOrder() async {
    print('--------------------------------------------------');

    print('Membatalkan Pesanan Tiket #$orderId untuk $concertName dari $customerName...');

    // Misalnya, di sini dapat dilakukan pembatalan pembayaran, pembaruan database, dll.

    status = TicketStatus.cancelled;
    print('Pesanan Tiket #$orderId telah dibatalkan.');

    print('--------------------------------------------------');
  }
}

void main() {
  // Membuat pesanan tiket konser
  var order1 = ConcertTicketOrder(1, 'Ratu', 2, 'The Weekend Live Concert');
  var order2 = ConcertTicketOrder(2, 'Rifanny', 3, 'Taylor Swift Tour');
  var order3 = ConcertTicketOrder(3, 'Jasmine', 1, 'Ed Sheeran World Tour');

  // Memproses pesanan secara asinkron
  processTicketOrders([order1, order2, order3]);
}

// Fungsi untuk memproses pesanan tiket secara asinkron
Future<void> processTicketOrders(List<ConcertTicketOrder> orders) async {
  print('--------------------------------------------------');
  print('Memulai proses pesanan tiket konser...');
  print('--------------------------------------------------\n');

  for (var order in orders) {
    await order.processOrder();
  }

  // Memproses pembatalan pesanan tiket tertentu
  await orders[1].cancelOrder();

  print('\n--------------------------------------------------');
  print('Semua pesanan tiket konser selesai diproses.');
  print('--------------------------------------------------');
}
