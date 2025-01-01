import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> books = [
    {'title': 'Jejak Kehidupan', 'image': 'assets/images/jejakkehidupan.png'},
    {'title': 'Lubuk Hati', 'image': 'assets/images/lubukhati.png'},
    {
      'title': 'Should I Trust You',
      'image': 'assets/images/shouldi.png'
    },
    {
      'title': 'Whispers of the Empty Room',
      'image': 'assets/images/whisper.png'
    },
  ];
  List<Map<String, String>> searchResults = [];

  void _searchBooks(String query) {
    setState(() {
      searchResults = books
          .where((book) =>
              book['title']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Container(
          height: 40, // Mengurangi ukuran container
          child: TextField(
            controller: _searchController,
            onChanged: _searchBooks,
            decoration: InputDecoration(
              hintText: 'Mau nyari buku apa?',
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (searchResults.isNotEmpty || _searchController.text.isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hasil Pencarian',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    ...searchResults.map((book) => ListTile(
                          leading: Image.asset(
                            book['image']!,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          title: Text(book['title']!,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        )),
                    SizedBox(height: 20),
                  ],
                ),
              Text('Rekomendasi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...books.map((book) => BookCard(
                          title: book['title']!,
                          image: book['image']!,
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Populer Saat Ini',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...books.map((book) => BookCard(
                          title: book['title']!,
                          image: book['image']!,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class BookCard extends StatelessWidget {
  final String title;
  final String image;

  BookCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
