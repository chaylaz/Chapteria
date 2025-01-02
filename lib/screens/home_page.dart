 
import 'package:flutter/material.dart';
import 'package:chapteriaapp/widgets/book_card.dart';

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
      'description':
          'Rumah tua di ujung desa itu sudah lama ditinggalkan, namun bagi Arman, fotografer yang gemar memburu bangunan bersejarah, tempat itu seperti harta karun yang menunggu untuk ditemukan. Ketika ia melangkah masuk, lantai kayu berderit di bawah kakinya, dan debu tebal menari di udara setiap kali ia bergerak. Di dalam ruangan yang gelap, dinding-dindingnya dipenuhi foto-foto lama yang tampak seakan memandang balik padanya. Namun, yang paling menarik perhatian adalah jejak kaki berdebu yang memanjang dari pintu depan hingga tangga menuju lantai dua—jejak kecil seperti milik seorang anak. Arman mengikuti jejak itu dengan rasa penasaran yang perlahan berubah menjadi rasa cemas. Setiap langkah membawanya lebih dalam ke lorong yang seakan memanjang tak berujung. Di salah satu kamar, ia menemukan kursi goyang yang bergerak perlahan, seakan baru saja ditinggalkan. Namun, yang membuat napasnya tercekat adalah foto berbingkai retak di atas meja, memperlihatkan dirinya sedang berdiri di depan rumah itu—dengan jejak kaki kecil di belakangnya yang sebelumnya tidak pernah ada.',
    },
    {
      'title': 'Lubuk Hati',
      'image': 'assets/images/lubukhati.png',
      'description':
          'Malam itu hujan turun deras, membasahi jalanan sempit menuju rumah tua di tepi danau yang konon tak berpenghuni. Rina terpaksa berteduh di sana setelah motornya mogok di tengah perjalanan pulang. Suasana di dalam terasa lembap dan dingin, namun ada yang lebih membuat bulu kuduknya meremang—lukisan besar di ruang tamu, menggambarkan seorang wanita yang berdiri di tepi danau dengan gaun putih basah yang melekat di tubuhnya. Tatapan wanita itu kosong, tapi seiring waktu berlalu, Rina merasa tatapan itu semakin tajam, seakan-akan sedang mengawasinya. Tiba-tiba, suara tangisan lirih terdengar dari dalam rumah, memanggil dengan nada pilu yang menusuk hati. Rina mencoba mengabaikannya, tetapi suara itu terus berulang, hingga ia tak tahan dan mengikuti sumbernya. Tangisan itu membawanya ke kamar kecil dengan cermin besar yang berembun. Saat Rina menyeka embun di cermin, ia melihat pantulan wanita dalam lukisan berdiri di belakangnya—tangannya menyentuh dada Rina perlahan, tepat di lubuk hatinya. Keesokan harinya, motor Rina masih terparkir di depan rumah itu, tapi Rina sendiri tak pernah ditemukan. Hanya jejak kaki basah yang mengarah ke tepi danau, sebelum akhirnya menghilang di antara riak air yang tenang.',
    },
    {
      'title': 'Should I Trust You',
      'image': 'assets/images/shouldi.png',
      'description':
          'Di malam yang sunyi, aku duduk di ruang tamu rumah tua yang baru aku beli, ditemani cahaya redup dari lampu kamar yang berkelap-kelip. Tiba-tiba, terdengar suara pintu yang terbuka pelan, meski aku tahu aku sendirian di rumah. Aku memanggil nama teman lama yang seharusnya datang untuk mengunjungi, namun tidak ada jawaban selain gema kosong. Tiba-tiba, seseorang berdiri di ambang pintu dengan wajah tertutup bayangan. "Aku di sini," katanya dengan suara pelan yang terdengar asing. Langkahku terhenti, tubuhku membeku, dan pikiranku berputar cepat. "Siapa kau?" aku berbisik, dan dia menjawab dengan senyuman samar, "Seharusnya kau tahu siapa aku." Makin mendekat, aku merasakan hawa dingin menusuk kulit, dan saat aku menyalakan lampu, sosok itu menghilang begitu saja. Tapi ada pesan di layar ponselku yang muncul: "Apakah kau masih percaya padaku?" Rasanya tubuhku terjatuh ke lantai, namun aku tahu satu hal pasti—tak ada yang benar-benar pergi dari rumah ini.',
    },
    {
      'title': 'Whispers of the Empty Room',
      'image': 'assets/images/whisper.png',
      'description':
          'Setelah pindah ke rumah tua yang konon telah lama kosong, aku merasa ada sesuatu yang aneh di kamar tidur utama. Setiap malam, aku mendengar bisikan halus, seolah-olah ada suara seseorang yang berbisik di dekat telingaku. Awalnya, aku mengira itu hanya imajinasiku, mungkin angin atau suara dari rumah yang sudah lapuk. Namun, semakin malam, bisikan itu semakin jelas, dan kadang-kadang aku bisa mendengar namaku disebut dengan nada yang penuh kebencian. Suatu malam, dengan keberanian yang tersisa, aku memutuskan untuk mencari sumber suara itu. Aku menyalakan lampu dan berjalan perlahan menuju ruang tidur yang gelap. Begitu pintu terbuka, aku terkejut melihat ruang itu tampak kosong, namun bisikan itu terus terdengar, kali ini lebih keras dan penuh amarah, seakan datang dari dinding. Aku berbalik, dan di sudut kamar, aku melihat bayangan samar—sebuah sosok gelap yang memandangiku dengan tatapan kosong. "Kenapa kau datang ke sini?" suara itu berbisik, dan tanpa sadar, aku mulai mundur, merasa seolah tubuhku ditarik menuju sudut gelap yang tak terlihat.',
    },
    {
      'title': 'After Mid Night',
      'image': 'assets/images/aftermidnight.png',
      'description':
          'Di tengah sunyi malam yang baru saja melewati tengah malam, kota yang biasanya riuh berubah menjadi kanvas gelap yang hanya dihiasi lampu jalan dan bayangan samar di gang-gang sempit. Di sudut kafe kecil yang masih buka, seorang perempuan bernama Nara duduk sendirian dengan secangkir kopi yang uapnya perlahan memudar. Pandangannya terfokus pada hujan gerimis di luar jendela, tetapi pikirannya melayang jauh, menelusuri kenangan-kenangan yang seharusnya sudah terkubur. Setiap tetes hujan yang jatuh ke jalanan seperti membawa gema langkah seseorang yang pernah ia kenal, seseorang yang selalu datang setelah tengah malam, lalu menghilang sebelum fajar. Kini, kafe itu terasa kosong, dan kursi di depannya tetap tak berpenghuni. Namun, dalam keheningan itu, Nara merasa seolah sosoknya masih ada di sana, berbisik pelan di antara suara hujan—mengingatkan bahwa tidak semua yang pergi benar-benar hilang.',
    },
    {
      'title': 'Bintang',
      'image': 'assets/images/bintang.jpeg',
      'description':
          'Setelah pesta usai dan semua orang beranjak pulang, Damar memilih tetap duduk di atas bukit kecil di pinggiran desa, memandangi langit yang dipenuhi bintang. Suasana malam terasa seperti selimut hangat yang melindunginya dari dinginnya angin pegunungan. Di sebelahnya, hanya sisa api unggun yang redup, meninggalkan cahaya jingga samar yang menari pelan di permukaan tanah. Bintang, gadis yang selalu menemani Damar menatap langit, kini hanya menjadi kenangan yang melayang di udara, sehalus bayangan bintang jatuh di kejauhan. Mereka dulu sering membicarakan impian di bawah langit yang sama—tentang kota besar, petualangan, dan janji yang tak pernah benar-benar mereka ucapkan. Malam itu, Damar sadar bahwa bintang di langit tidak pernah pergi, hanya berpindah tempat, sama seperti Bintang yang kini berpendar di hatinya, menerangi jalan meski tak lagi bisa digapai.',
    },
    {
      'title': 'Love In The Fast Lane',
      'image': 'assets/images/loveinthe.jpg',
      'description':
          'Di antara deru mesin dan kilauan lampu jalanan, Alana memacu mobil sport merahnya di jalan tol yang hampir kosong menjelang tengah malam. Adrenalin mengalir deras, seiring dengan alunan musik rock yang menggema di dalam kabin. Di kursi penumpang, Raka duduk dengan senyum tipis, tangannya santai di jendela terbuka, menikmati angin malam yang menerpa wajah mereka. Mereka adalah dua jiwa yang hidup dengan kecepatan tinggi, menantang batas dan menertawakan risiko. Hubungan mereka tidak pernah berjalan lambat—semuanya berlangsung cepat, penuh gairah dan ketidakpastian. Setiap belokan tajam dan lampu merah yang mereka terobos terasa seperti simbol dari cinta mereka yang liar dan tak terduga. Namun, di tengah kebisingan dan kilatan lampu kota, ada momen-momen sunyi di antara mereka, ketika tatapan mata bertemu lebih dalam dari sekadar permainan kecepatan. Dalam dunia yang terus berlari, mereka menemukan cinta di antara detik-detik yang berlalu begitu cepat, seperti kilatan lampu neon yang hanya sekejap menyala, tapi meninggalkan jejak yang tak mudah pudar.',
    },
    {
      'title': 'Now I Know',
      'image': 'assets/images/nowiknow.jpg',
      'description':
          'Dulu, Arga selalu berpikir bahwa cinta adalah sesuatu yang rumit, penuh tanda tanya, dan sering kali menyakitkan. Ia mencari jawaban di tempat-tempat yang salah, pada orang-orang yang hanya singgah sementara, meninggalkan luka yang tak kunjung sembuh. Namun, di pagi yang biasa itu, saat mentari menyusup perlahan ke dalam kamarnya, ia menyadari sesuatu yang sederhana—Rani, sahabatnya sejak kecil, adalah jawaban yang selama ini ia cari. Tidak ada ledakan emosi, tidak ada kejutan besar, hanya kehangatan yang selama ini ia abaikan. Rani selalu ada di sana, di setiap luka dan tawa, menjadi sosok yang menemani tanpa pernah meminta balasan. Sekarang, Arga tahu. Cinta sejati bukanlah tentang mengejar sesuatu yang berkilau, melainkan tentang menyadari cahaya lembut yang selalu menyinari jalan, bahkan saat mata kita terlalu sibuk mencari di tempat lain. Now he knows, and in that quiet realization, Arga menemukan ketenangan yang selama ini ia rindukan.',
    },
    {
      'title': 'Opacarophile',
      'image': 'assets/images/Opacarophile.jpg',
      'description':
          'Senja selalu menjadi waktu yang dinantikan oleh Lila, seakan-akan seluruh dunianya dirancang untuk berhenti tepat saat matahari merunduk perlahan di cakrawala. Setiap sore, ia duduk di tepi pantai, membiarkan pasir hangat meresap di sela jemarinya, sementara langit berubah warna dari jingga ke ungu keemasan. Baginya, senja bukan sekadar peristiwa alam—melainkan percakapan diam-diam antara dirinya dan dunia yang kadang terasa begitu asing. Ada sesuatu tentang cahaya yang memudar perlahan yang membuat Lila merasa hidup, seolah-olah setiap garis cahaya yang hilang membawa sebagian dari keresahannya pergi bersama mereka. Di dalam ketenangan itu, ia menemukan jawaban-jawaban yang tak pernah ia temukan di keramaian siang atau dalam kesunyian malam. Lila tahu, ia adalah seorang opacarophile—pecinta senja—dan di bawah langit yang membara, ia selalu merasa paling dekat dengan dirinya sendiri.',
    },
    {
      'title': 'Stephen King',
      'image': 'assets/images/stephenking.jpeg',
      'description':
          'Di sebuah kota kecil yang sepi, toko buku tua di sudut jalan selalu tampak lengang, kecuali pada malam tertentu ketika lampu di dalamnya menyala redup. Arya, seorang penggemar berat novel horor, tak pernah bisa mengabaikan godaan untuk masuk setiap kali melewatinya. Suatu malam, ia menemukan satu buku tanpa sampul berjudul Stephen King yang tergeletak di rak paling bawah, seolah menanti seseorang untuk menemukannya. Halaman-halamannya berdebu, tetapi setiap kata yang ia baca terasa begitu nyata, seakan-akan melompat keluar dari kertas. Saat Arya membaca lebih dalam, ia menyadari cerita dalam buku itu bukan sekadar fiksi—tetapi catatan hidupnya sendiri, terperinci hingga hal-hal yang belum terjadi. Saat ia membalik halaman terakhir, namanya tertulis di sana sebagai tokoh yang akan mati di malam yang sama. Jantungnya berdegup kencang saat suara langkah kaki terdengar di belakangnya, dan refleksi di cermin toko menunjukkan sesuatu yang seharusnya tidak ada di sana—seseorang yang wajahnya samar, memegang buku yang sama, tersenyum tipis seolah baru saja menyelesaikan bab terakhir.',
    },
    {
      'title': 'Tenggelamnya Kapal Van Der Wijck',
      'image': 'assets/images/tenggelamnyakapal.jpg',
      'description':
          'Di pelabuhan yang dipenuhi keramaian, Kapal Van der Wijck berdiri megah, seolah-olah siap mengarungi lautan luas dengan penuh kebanggaan. Zainuddin berdiri di tepian dermaga, matanya tak lepas menatap kapal yang perlahan menghilang di cakrawala, membawa serta Hayati—perempuan yang cintanya tak pernah benar-benar menjadi miliknya. Di dalam kabin, Hayati duduk diam menatap laut, pikirannya dipenuhi bayangan masa lalu yang ia tinggalkan. Cinta mereka seperti ombak yang terus berkejaran, indah namun tak pernah bersatu. Ketika kabar tentang tenggelamnya kapal itu sampai di telinga Zainuddin, dunianya seketika runtuh. Air matanya jatuh bersama surat terakhir yang ditulis Hayati, yang mengungkapkan bahwa hatinya selalu berpulang pada Zainuddin, meski dunia memisahkan mereka. Di tepi pantai yang sama, Zainuddin berdiri setiap senja, menatap laut yang telah merenggut segalanya darinya, kecuali kenangan yang terus hidup di dalam hatinya.',
    },
    {
      'title': 'The Reaping',
      'image': 'assets/images/thereaping.jpg',
      'description':
          'Ketika matahari tenggelam di atas desa Ravenbrook, udara malam membawa bisikan yang terasa lebih dingin dari biasanya. Penduduk desa sudah lama tahu bahwa setiap panen ketiga, sesuatu akan datang untuk “memanen” kembali—bukan hasil bumi, melainkan nyawa. Ethan, pemuda yang selama ini menganggap kisah itu hanyalah dongeng untuk menakuti anak-anak, mulai meragukan segalanya saat menemukan ladang gandum miliknya layu dalam semalam, seolah disentuh oleh tangan tak kasat mata. Malam itu, suara derap langkah terdengar di jalanan, dan bayangan tinggi bertudung mulai muncul di batas desa, berjalan tanpa suara namun membawa keheningan mematikan. Satu per satu lampu rumah padam, dan suara-suara berbisik menyusup ke telinga Ethan, menyebut nama-nama yang akan diambil malam itu. Ketika fajar menyingsing, desa Ravenbrook tetap tenang, tetapi beberapa rumah kosong—tanpa jejak perlawanan, hanya ladang-ladang yang kini tumbuh subur, seakan disiram oleh sesuatu yang lebih dari sekadar hujan.',
    },
  ];
  List<Map<String, String>> searchResults = [];
  int _currentIndex = 0;

  void _searchBooks(String query) {
    setState(() {
      searchResults = books
          .where((book) =>
              book['title']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  final List<Widget> _pages = [
    HomeContent(),
    LibraryPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    searchResults = books; // Default to showing all books.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        automaticallyImplyLeading: false,
        title: Container(
          height: 40,
          child: TextField(
            controller: _searchController,
            onChanged: _searchBooks,
            decoration: InputDecoration(
              hintText: 'Mau baca cerita apa?',
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
      body: _searchController.text.isNotEmpty
          ? SearchResultsPage(
              searchResults: searchResults,
            )
          : _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rekomendasi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BookCard(
                    title: 'Jejak Kehidupan',
                    image: 'assets/images/jejakkehidupan.png',
                    description:
          'Rumah tua di ujung desa itu sudah lama ditinggalkan, namun bagi Arman, fotografer yang gemar memburu bangunan bersejarah, tempat itu seperti harta karun yang menunggu untuk ditemukan. Ketika ia melangkah masuk, lantai kayu berderit di bawah kakinya, dan debu tebal menari di udara setiap kali ia bergerak. Di dalam ruangan yang gelap, dinding-dindingnya dipenuhi foto-foto lama yang tampak seakan memandang balik padanya. Namun, yang paling menarik perhatian adalah jejak kaki berdebu yang memanjang dari pintu depan hingga tangga menuju lantai dua—jejak kecil seperti milik seorang anak. Arman mengikuti jejak itu dengan rasa penasaran yang perlahan berubah menjadi rasa cemas. Setiap langkah membawanya lebih dalam ke lorong yang seakan memanjang tak berujung. Di salah satu kamar, ia menemukan kursi goyang yang bergerak perlahan, seakan baru saja ditinggalkan. Namun, yang membuat napasnya tercekat adalah foto berbingkai retak di atas meja, memperlihatkan dirinya sedang berdiri di depan rumah itu—dengan jejak kaki kecil di belakangnya yang sebelumnya tidak pernah ada.',
                  ),
                  BookCard(
                    title: 'Lubuk Hati',
                    image: 'assets/images/lubukhati.png',
                    description:
          'Malam itu hujan turun deras, membasahi jalanan sempit menuju rumah tua di tepi danau yang konon tak berpenghuni. Rina terpaksa berteduh di sana setelah motornya mogok di tengah perjalanan pulang. Suasana di dalam terasa lembap dan dingin, namun ada yang lebih membuat bulu kuduknya meremang—lukisan besar di ruang tamu, menggambarkan seorang wanita yang berdiri di tepi danau dengan gaun putih basah yang melekat di tubuhnya. Tatapan wanita itu kosong, tapi seiring waktu berlalu, Rina merasa tatapan itu semakin tajam, seakan-akan sedang mengawasinya. Tiba-tiba, suara tangisan lirih terdengar dari dalam rumah, memanggil dengan nada pilu yang menusuk hati. Rina mencoba mengabaikannya, tetapi suara itu terus berulang, hingga ia tak tahan dan mengikuti sumbernya. Tangisan itu membawanya ke kamar kecil dengan cermin besar yang berembun. Saat Rina menyeka embun di cermin, ia melihat pantulan wanita dalam lukisan berdiri di belakangnya—tangannya menyentuh dada Rina perlahan, tepat di lubuk hatinya. Keesokan harinya, motor Rina masih terparkir di depan rumah itu, tapi Rina sendiri tak pernah ditemukan. Hanya jejak kaki basah yang mengarah ke tepi danau, sebelum akhirnya menghilang di antara riak air yang tenang.',
                  ),
                  BookCard(
                    title: 'Should I Trust You',
                    image: 'assets/images/shouldi.png',
                    description:
          'Di malam yang sunyi, aku duduk di ruang tamu rumah tua yang baru aku beli, ditemani cahaya redup dari lampu kamar yang berkelap-kelip. Tiba-tiba, terdengar suara pintu yang terbuka pelan, meski aku tahu aku sendirian di rumah. Aku memanggil nama teman lama yang seharusnya datang untuk mengunjungi, namun tidak ada jawaban selain gema kosong. Tiba-tiba, seseorang berdiri di ambang pintu dengan wajah tertutup bayangan. "Aku di sini," katanya dengan suara pelan yang terdengar asing. Langkahku terhenti, tubuhku membeku, dan pikiranku berputar cepat. "Siapa kau?" aku berbisik, dan dia menjawab dengan senyuman samar, "Seharusnya kau tahu siapa aku." Makin mendekat, aku merasakan hawa dingin menusuk kulit, dan saat aku menyalakan lampu, sosok itu menghilang begitu saja. Tapi ada pesan di layar ponselku yang muncul: "Apakah kau masih percaya padaku?" Rasanya tubuhku terjatuh ke lantai, namun aku tahu satu hal pasti—tak ada yang benar-benar pergi dari rumah ini.',
                  ),
                  BookCard(
                    title: 'Whispers of the Empty Room',
                    image: 'assets/images/whisper.png',
                    description:
          'Setelah pindah ke rumah tua yang konon telah lama kosong, aku merasa ada sesuatu yang aneh di kamar tidur utama. Setiap malam, aku mendengar bisikan halus, seolah-olah ada suara seseorang yang berbisik di dekat telingaku. Awalnya, aku mengira itu hanya imajinasiku, mungkin angin atau suara dari rumah yang sudah lapuk. Namun, semakin malam, bisikan itu semakin jelas, dan kadang-kadang aku bisa mendengar namaku disebut dengan nada yang penuh kebencian. Suatu malam, dengan keberanian yang tersisa, aku memutuskan untuk mencari sumber suara itu. Aku menyalakan lampu dan berjalan perlahan menuju ruang tidur yang gelap. Begitu pintu terbuka, aku terkejut melihat ruang itu tampak kosong, namun bisikan itu terus terdengar, kali ini lebih keras dan penuh amarah, seakan datang dari dinding. Aku berbalik, dan di sudut kamar, aku melihat bayangan samar—sebuah sosok gelap yang memandangiku dengan tatapan kosong. "Kenapa kau datang ke sini?" suara itu berbisik, dan tanpa sadar, aku mulai mundur, merasa seolah tubuhku ditarik menuju sudut gelap yang tak terlihat.',
                  ),
                  BookCard(
                    title: 'After Mid Night',
                    image: 'assets/images/aftermidnight.png',
                    description:
          'Di tengah sunyi malam yang baru saja melewati tengah malam, kota yang biasanya riuh berubah menjadi kanvas gelap yang hanya dihiasi lampu jalan dan bayangan samar di gang-gang sempit. Di sudut kafe kecil yang masih buka, seorang perempuan bernama Nara duduk sendirian dengan secangkir kopi yang uapnya perlahan memudar. Pandangannya terfokus pada hujan gerimis di luar jendela, tetapi pikirannya melayang jauh, menelusuri kenangan-kenangan yang seharusnya sudah terkubur. Setiap tetes hujan yang jatuh ke jalanan seperti membawa gema langkah seseorang yang pernah ia kenal, seseorang yang selalu datang setelah tengah malam, lalu menghilang sebelum fajar. Kini, kafe itu terasa kosong, dan kursi di depannya tetap tak berpenghuni. Namun, dalam keheningan itu, Nara merasa seolah sosoknya masih ada di sana, berbisik pelan di antara suara hujan—mengingatkan bahwa tidak semua yang pergi benar-benar hilang.',
                  ),
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
                  BookCard(
                    title: 'Bintang',
                    image: 'assets/images/bintang.jpeg',
                    description:
          'Setelah pesta usai dan semua orang beranjak pulang, Damar memilih tetap duduk di atas bukit kecil di pinggiran desa, memandangi langit yang dipenuhi bintang. Suasana malam terasa seperti selimut hangat yang melindunginya dari dinginnya angin pegunungan. Di sebelahnya, hanya sisa api unggun yang redup, meninggalkan cahaya jingga samar yang menari pelan di permukaan tanah. Bintang, gadis yang selalu menemani Damar menatap langit, kini hanya menjadi kenangan yang melayang di udara, sehalus bayangan bintang jatuh di kejauhan. Mereka dulu sering membicarakan impian di bawah langit yang sama—tentang kota besar, petualangan, dan janji yang tak pernah benar-benar mereka ucapkan. Malam itu, Damar sadar bahwa bintang di langit tidak pernah pergi, hanya berpindah tempat, sama seperti Bintang yang kini berpendar di hatinya, menerangi jalan meski tak lagi bisa digapai.',
                  ),
                  BookCard(
                    title: 'Love In The Fast Lane',
                    image: 'assets/images/loveinthe.jpg',
                    description:
          'Di antara deru mesin dan kilauan lampu jalanan, Alana memacu mobil sport merahnya di jalan tol yang hampir kosong menjelang tengah malam. Adrenalin mengalir deras, seiring dengan alunan musik rock yang menggema di dalam kabin. Di kursi penumpang, Raka duduk dengan senyum tipis, tangannya santai di jendela terbuka, menikmati angin malam yang menerpa wajah mereka. Mereka adalah dua jiwa yang hidup dengan kecepatan tinggi, menantang batas dan menertawakan risiko. Hubungan mereka tidak pernah berjalan lambat—semuanya berlangsung cepat, penuh gairah dan ketidakpastian. Setiap belokan tajam dan lampu merah yang mereka terobos terasa seperti simbol dari cinta mereka yang liar dan tak terduga. Namun, di tengah kebisingan dan kilatan lampu kota, ada momen-momen sunyi di antara mereka, ketika tatapan mata bertemu lebih dalam dari sekadar permainan kecepatan. Dalam dunia yang terus berlari, mereka menemukan cinta di antara detik-detik yang berlalu begitu cepat, seperti kilatan lampu neon yang hanya sekejap menyala, tapi meninggalkan jejak yang tak mudah pudar.',
                  ),
                  BookCard(
                    title: 'Now I Know',
                    image: 'assets/images/nowiknow.jpg',
                    description:
          'Dulu, Arga selalu berpikir bahwa cinta adalah sesuatu yang rumit, penuh tanda tanya, dan sering kali menyakitkan. Ia mencari jawaban di tempat-tempat yang salah, pada orang-orang yang hanya singgah sementara, meninggalkan luka yang tak kunjung sembuh. Namun, di pagi yang biasa itu, saat mentari menyusup perlahan ke dalam kamarnya, ia menyadari sesuatu yang sederhana—Rani, sahabatnya sejak kecil, adalah jawaban yang selama ini ia cari. Tidak ada ledakan emosi, tidak ada kejutan besar, hanya kehangatan yang selama ini ia abaikan. Rani selalu ada di sana, di setiap luka dan tawa, menjadi sosok yang menemani tanpa pernah meminta balasan. Sekarang, Arga tahu. Cinta sejati bukanlah tentang mengejar sesuatu yang berkilau, melainkan tentang menyadari cahaya lembut yang selalu menyinari jalan, bahkan saat mata kita terlalu sibuk mencari di tempat lain. Now he knows, and in that quiet realization, Arga menemukan ketenangan yang selama ini ia rindukan.',
                  ),
                  BookCard(
                    title: 'Opacarophile',
                    image: 'assets/images/Opacarophile.jpg',
                    description:
          'Senja selalu menjadi waktu yang dinantikan oleh Lila, seakan-akan seluruh dunianya dirancang untuk berhenti tepat saat matahari merunduk perlahan di cakrawala. Setiap sore, ia duduk di tepi pantai, membiarkan pasir hangat meresap di sela jemarinya, sementara langit berubah warna dari jingga ke ungu keemasan. Baginya, senja bukan sekadar peristiwa alam—melainkan percakapan diam-diam antara dirinya dan dunia yang kadang terasa begitu asing. Ada sesuatu tentang cahaya yang memudar perlahan yang membuat Lila merasa hidup, seolah-olah setiap garis cahaya yang hilang membawa sebagian dari keresahannya pergi bersama mereka. Di dalam ketenangan itu, ia menemukan jawaban-jawaban yang tak pernah ia temukan di keramaian siang atau dalam kesunyian malam. Lila tahu, ia adalah seorang opacarophile—pecinta senja—dan di bawah langit yang membara, ia selalu merasa paling dekat dengan dirinya sendiri.',
                  ),
                  BookCard(
                    title: 'Stephen King',
                    image: 'assets/images/stephenking.jpeg',
                    description:
          'Di sebuah kota kecil yang sepi, toko buku tua di sudut jalan selalu tampak lengang, kecuali pada malam tertentu ketika lampu di dalamnya menyala redup. Arya, seorang penggemar berat novel horor, tak pernah bisa mengabaikan godaan untuk masuk setiap kali melewatinya. Suatu malam, ia menemukan satu buku tanpa sampul berjudul Stephen King yang tergeletak di rak paling bawah, seolah menanti seseorang untuk menemukannya. Halaman-halamannya berdebu, tetapi setiap kata yang ia baca terasa begitu nyata, seakan-akan melompat keluar dari kertas. Saat Arya membaca lebih dalam, ia menyadari cerita dalam buku itu bukan sekadar fiksi—tetapi catatan hidupnya sendiri, terperinci hingga hal-hal yang belum terjadi. Saat ia membalik halaman terakhir, namanya tertulis di sana sebagai tokoh yang akan mati di malam yang sama. Jantungnya berdegup kencang saat suara langkah kaki terdengar di belakangnya, dan refleksi di cermin toko menunjukkan sesuatu yang seharusnya tidak ada di sana—seseorang yang wajahnya samar, memegang buku yang sama, tersenyum tipis seolah baru saja menyelesaikan bab terakhir.',
                  ),
                  BookCard(
                    title: 'Tenggelamnya Kapal Van Der Wijck',
                    image: 'assets/images/tenggelamnyakapal.jpg',
                    description:
          'Di pelabuhan yang dipenuhi keramaian, Kapal Van der Wijck berdiri megah, seolah-olah siap mengarungi lautan luas dengan penuh kebanggaan. Zainuddin berdiri di tepian dermaga, matanya tak lepas menatap kapal yang perlahan menghilang di cakrawala, membawa serta Hayati—perempuan yang cintanya tak pernah benar-benar menjadi miliknya. Di dalam kabin, Hayati duduk diam menatap laut, pikirannya dipenuhi bayangan masa lalu yang ia tinggalkan. Cinta mereka seperti ombak yang terus berkejaran, indah namun tak pernah bersatu. Ketika kabar tentang tenggelamnya kapal itu sampai di telinga Zainuddin, dunianya seketika runtuh. Air matanya jatuh bersama surat terakhir yang ditulis Hayati, yang mengungkapkan bahwa hatinya selalu berpulang pada Zainuddin, meski dunia memisahkan mereka. Di tepi pantai yang sama, Zainuddin berdiri setiap senja, menatap laut yang telah merenggut segalanya darinya, kecuali kenangan yang terus hidup di dalam hatinya.',
                  ),
                   BookCard(
                    title: 'The Reaping',
                    image: 'assets/images/thereaping.jpg',
                    description:
          'Ketika matahari tenggelam di atas desa Ravenbrook, udara malam membawa bisikan yang terasa lebih dingin dari biasanya. Penduduk desa sudah lama tahu bahwa setiap panen ketiga, sesuatu akan datang untuk “memanen” kembali—bukan hasil bumi, melainkan nyawa. Ethan, pemuda yang selama ini menganggap kisah itu hanyalah dongeng untuk menakuti anak-anak, mulai meragukan segalanya saat menemukan ladang gandum miliknya layu dalam semalam, seolah disentuh oleh tangan tak kasat mata. Malam itu, suara derap langkah terdengar di jalanan, dan bayangan tinggi bertudung mulai muncul di batas desa, berjalan tanpa suara namun membawa keheningan mematikan. Satu per satu lampu rumah padam, dan suara-suara berbisik menyusup ke telinga Ethan, menyebut nama-nama yang akan diambil malam itu. Ketika fajar menyingsing, desa Ravenbrook tetap tenang, tetapi beberapa rumah kosong—tanpa jejak perlawanan, hanya ladang-ladang yang kini tumbuh subur, seakan disiram oleh sesuatu yang lebih dari sekadar hujan.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchResultsPage extends StatelessWidget {
  final List<Map<String, String>> searchResults;

  SearchResultsPage({required this.searchResults});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: searchResults.length,
      itemBuilder: (context, index) {
        final book = searchResults[index];
        return ListTile(
          leading: Image.asset(book['image']!, width: 50, height: 50),
          title: Text(book['title']!),
          subtitle: Text(book['description']!.substring(0, 50) + '...'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetailPage(book: book),
              ),
            );
          },
        );
      },
    );
  }
}

class BookDetailPage extends StatelessWidget {
  final Map<String, String> book;

  BookDetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text(book['title']!),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(book['image']!, width: double.infinity, height: 200),
            SizedBox(height: 20),
            Text(
              book['title']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(book['description']!),
          ],
        ),
      ),
    );
  }
}

class LibraryPage extends StatelessWidget {
   final List<Map<String, String>> books = [
    {
      'title': 'Jejak Kehidupan',
      'status': 'Available Offline',
      'imageUrl': 'assets/images/jejakkehidupan.png',
    },
    {
      'title': 'Lubuk Hati',
      'status': 'Available Offline',
      'imageUrl': 'assets/images/lubukhati.png',
    },
    {
      'title': 'Should I Trust You',
      'status': 'Available Offline',
      'imageUrl': 'assets/images/shouldi.png',
    },
    // Menambahkan lebih banyak buku untuk menunjukkan scroll
    {
      'title': 'Whispers of the Empty Room',
      'status': 'Available Offline',
      'imageUrl': 'assets/images/whisper.png',
    },
    {
      'title': 'After Mid Night',
      'status': 'Available Offline',
      'imageUrl': 'assets/images/aftermidnight.png',
    },
    {
      'title': 'Now I Know',
      'status': 'Available Offline',
      'imageUrl': 'assets/images/nowiknow.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics:
              NeverScrollableScrollPhysics(), // Karena scroll sudah ditangani SingleChildScrollView
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.5,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
          ),
          itemCount: books.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        books[index]['imageUrl']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  books[index]['title']!,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.0),
                Text(
                  books[index]['status']!,
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final List<Map<String, String>> recentBooks = [
    {
      'title': 'Jejak Kehidupan',
      'lastRead': '2 days ago',
      'progress': '75%',
      'imageUrl': 'assets/images/jejakkehidupan.png',
    },
    {
      'title': 'Lubuk Hati',
      'lastRead': '5 days ago',
      'progress': '45%',
      'imageUrl': 'assets/images/lubukhati.png',
    },
    {
      'title': 'Should I Trust You',
      'lastRead': '1 week ago',
      'progress': '90%',
      'imageUrl': 'assets/images/shouldi.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Profile Image
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/fotoprofil.jpg'), // sesuaikan dengan path image Anda
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Name
            Text(
              'Kim Chaylalala',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            // About Yourself Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFB5D1C9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adalah yang anak rajin menabung di kantin',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
            SizedBox(height: 24),
            // Terakhir dibaca Section
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Terakhir dibaca',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Recently Read Books List
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: recentBooks.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  margin: EdgeInsets.only(bottom: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        // Book Cover
                        Container(
                          width: 60,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(recentBooks[index]['imageUrl']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        // Book Details
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recentBooks[index]['title']!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Last read ${recentBooks[index]['lastRead']!}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(height: 8),
                              // Progress Bar
                              LinearProgressIndicator(
                                value: double.parse(recentBooks[index]['progress']!.replaceAll('%', '')) / 100,
                                backgroundColor: Colors.grey[200],
                                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF1D4144)),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Progress: ${recentBooks[index]['progress']}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}