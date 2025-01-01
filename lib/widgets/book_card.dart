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


import 'package:chapteriaapp/screens/home_page.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String image;
  final String description; // Tambahkan parameter description

  BookCard({
    required this.title,
    required this.image,
    required this.description, // Tambahkan parameter description
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Tambahkan GestureDetector untuk menangani klik
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
        margin: EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
