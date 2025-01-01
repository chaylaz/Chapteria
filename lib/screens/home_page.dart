import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Logochapteria.png', // Replace with your logo
                  height: 100,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[200],
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text('Login', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> books = [
    {
      'title': 'Jejak Kehidupan',
      'image': 'assets/images/jejakkehidupan.png',
      'description': 'Amara, seorang gadis muda dari desa kecil yang dikelilingi bukit hijau, selalu merasa ada kekosongan dalam hidupnya karena tak pernah mengenal neneknya, seorang wanita yang sangat dihormati di desa karena kebijaksanaannya. Neneknya, yang meninggal sebelum Amara lahir, meninggalkan banyak kenangan dan kisah yang diceritakan oleh orang-orang di desa, namun ibunya selalu menghindar setiap kali Amara bertanya tentangnya. Penasaran dengan sosok yang begitu dihormati itu, Amara memutuskan untuk mengunjungi rumah tua neneknya, yang kini hanya menjadi gudang penyimpanan. Di sana, ia menemukan sebuah buku tua yang menyimpan kisah hidup neneknya. Buku itu menceritakan perjuangan neneknya yang tak kenal lelah dalam menghadapi kesulitan hidup—dari kehilangan orang terdekat hingga menghadapi ketidakadilan, namun neneknya selalu bangkit dan menolong orang-orang di sekitarnya. Melalui buku itu, Amara menyadari bahwa neneknya bukan hanya seorang petani biasa, melainkan seorang wanita yang menginspirasi banyak orang dengan keteguhan hati dan kebijaksanaan. Amara merasa terharu dan sangat kagum, karena meskipun neneknya telah tiada, jejak kehidupan yang ditinggalkan begitu besar dan bermakna. Dengan semangat baru, Amara bertekad untuk melanjutkan warisan nilai-nilai kebaikan dan keteguhan hati neneknya, meninggalkan jejak kehidupan yang penuh makna bagi dirinya dan orang-orang di sekitarnya.'
    },
    {
      'title': 'Lubuk Hati',
      'image': 'assets/images/lubukhati.png',
      'description': 'Siska, seorang wanita ceria yang selalu tampak bahagia di luar, menyimpan luka dalam di lubuk hatinya setelah kehilangan sahabat terbaiknya, Rani, dalam kecelakaan yang tak terduga. Meskipun kesedihannya mengalir seperti sungai yang tak pernah kering, Siska berusaha menyembunyikan rasa sakit itu dan tetap menjalani hidup seolah semuanya baik-baik saja. Namun, pertemuannya dengan Arka, seorang terapis yang peduli, membuka jalan bagi Siska untuk mulai melepaskan beban emosionalnya. Dengan ketulusan Arka, Siska belajar untuk menerima kenyataan dan meresapi kenangan indah bersama Rani, akhirnya menyadari bahwa untuk sembuh, ia harus memberi ruang bagi kesedihan dan membuka hatinya untuk menerima kedamaian.'
    },
    {
      'title': 'Should I Trust You',
      'image': 'assets/images/shouldi.png',
      'description': 'Setelah bertahun-tahun menjalani hubungan yang penuh dengan kebohongan dan pengkhianatan, Lara merasa bingung dan terjebak dalam dilema besar: *should I trust you?* Pertanyaan itu terus menghantui pikirannya setiap kali ia memandang wajah Aidan, kekasihnya, yang selalu berjanji akan berubah. Mereka telah melalui banyak rintangan, namun Lara tidak bisa melupakan kejadian-kejadian yang merusak rasa percayanya. Aidan seringkali membuatnya kecewa, baik dengan kata-kata manis yang ternyata kosong maupun tindakan-tindakan yang menyakitkan, namun ia selalu kembali dengan penyesalan yang tampaknya tulus. Lara tahu, di satu sisi, Aidan benar-benar mencintainya, namun ia juga tahu betapa rapuhnya komitmen yang telah mereka bangun. Setiap kali Aidan berusaha membuktikan dirinya, Lara merasa ada keraguan yang lebih besar muncul di dalam dirinya, apakah semua yang dilakukan Aidan benar-benar untuknya atau hanya untuk menutupi kesalahan yang terus terulang. Ia bertanya-tanya apakah hubungan ini bisa bertahan tanpa kepercayaan yang tulus, dan jika ia memilih untuk memberikan kepercayaan itu, apakah ia akan disakiti lagi? Lara berada di persimpangan jalan, terombang-ambing antara perasaan cinta dan ketakutan akan pengkhianatan lebih lanjut. Dalam hatinya, ia tahu bahwa kepercayaan adalah dasar dari segala hubungan, namun apakah Aidan cukup pantas untuk mendapatkannya lagi?'
    },
    {
      'title': 'Whispers of the Empty Room',
      'image': 'assets/images/whisper.png',
      'description': 'Di sebuah rumah tua yang terletak di ujung jalan sepi, Emily sering kali mendengar bisikan-bisikan halus yang datang dari dalam ruangan kosong yang sudah lama tak terjamah. Setiap malam, ketika angin bertiup kencang dan bayangan gelap menyelimuti rumah, suara-suara itu semakin jelas, seperti ada yang memanggilnya dari dalam kamar yang terkunci. Emily telah tinggal di rumah itu sejak kecil, mewarisi rumah itu dari neneknya yang meninggal tanpa meninggalkan banyak kenangan, kecuali beberapa benda tua yang tak lagi berfungsi dan sebuah foto keluarga yang usang. Meski begitu, ada sesuatu yang aneh dengan rumah itu, seperti ada bagian yang terlewat, sesuatu yang tersembunyi dan tak bisa dijelaskan. Suara bisikan itu selalu datang dari kamar yang sepertinya tak pernah ada orang yang masuk selama bertahun-tahun, dan setiap kali Emily mencoba mendekat, rasa takut yang tak dapat dijelaskan membuatnya mundur. Akhirnya, rasa penasaran mengalahkan ketakutannya, dan dengan hati yang berdebar, ia membuka pintu kamar tersebut. Apa yang ia temui di dalamnya bukanlah sesuatu yang dapat dijelaskan dengan kata-kata—hanya kesunyian yang dalam, diikuti oleh suara samar-samar yang terdengar seperti bisikan: "Kau telah kembali." Di ruangan itu, Emily merasa ada yang menunggunya, sesuatu yang lebih besar dari sekadar kenangan atau sejarah keluarganya—sebuah rahasia yang seolah mengikatnya dengan masa lalu yang terlupakan.'
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
        automaticallyImplyLeading: false, // Remove back button
        title: Container(
          height: 40, // Reduce container size
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
                          title: Text(book['title']!),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookDetailPage(
                                  title: book['title']!,
                                  image: book['image']!,
                                  description: book['description']!,
                                ),
                              ),
                            );
                          },
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
                          description: book['description']!,
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
                          description: book['description']!,
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
  final String description;

  BookCard(
      {required this.title, required this.image, required this.description});

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

class BookDetailPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  BookDetailPage({
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  image,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
