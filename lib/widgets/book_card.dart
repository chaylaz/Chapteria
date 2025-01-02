// import 'package:flutter/material.dart';

// class BookCard extends StatelessWidget {
//   final String title;
//   final String image;

//   BookCard({required this.title, required this.image, required String description});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 120,
//       margin: EdgeInsets.only(right: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 150,
//             decoration: BoxDecoration(
//               color: Colors.grey[300],
//               image: DecorationImage(
//                 image: AssetImage(image),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           Text(title,
//               style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
//         ],
//       ),
//     );
//   }
// }


// import 'package:chapteriaapp/screens/home_page.dart';
// import 'package:flutter/material.dart';

// class BookCard extends StatelessWidget {
//   final String title;
//   final String image;
//   final String description;

//   BookCard({
//     required this.title,
//     required this.image,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Navigasi ke halaman detail buku
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => BookDetailPage(
//               title: title,
//               image: image,
//               description: description,
//             ),
//           ),
//         );
//       },
//       child: Container(
//         width: 120,
//         margin: EdgeInsets.only(right: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 150,
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius:
//                     BorderRadius.circular(8), // Tambahkan border radius
//                 image: DecorationImage(
//                   image: AssetImage(image),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             SizedBox(height: 5),
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: 14,
//                 fontWeight: FontWeight.bold,
//               ),
//               maxLines: 2, // Batas maksimal 2 baris
//               overflow: TextOverflow
//                   .ellipsis, // Tampilkan "..." jika teks terlalu panjang
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:chapteriaapp/book_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:chapteriaapp/screens/home_page.dart' as screens;

class BookCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const BookCard({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailPage(
              title: title,
              image: image,
              description: description,
            ),
          ),
        );
      },
      child: Container(
        width: 120,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}


