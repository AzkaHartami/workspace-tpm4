class SitusData {
  String name;
  String image;
  String penjelasan;
  String situsUrl;
  bool isFavorite;

  SitusData({
    required this.name,
    required this.image,
    required this.penjelasan,
    required this.situsUrl,
    required this.isFavorite,
  });
}

var ListSitus = [
  SitusData(
    name: "Reddit",
    image:
        "https://www.reddiquette.com/wp-content/uploads/2020/09/What-Is-The-Reddit-Logo-Called.png",
    penjelasan: "Reddit adalah situs web forum online yang memungkinkan pengguna untuk berdiskusi tentang berbagai topik. Pengguna dapat membuat posting dan memberikan suara pada posting lainnya, serta berkomentar di bawah posting. Situs ini sangat populer di seluruh dunia dan menawarkan berbagai komunitas untuk hampir semua topik yang dapat Anda bayangkan.",
    situsUrl: "https://www.reddit.com/",
    isFavorite: false,
  ),
  SitusData(
    name: "Udemy",
    image:
        "https://play-lh.googleusercontent.com/dsCkmJE2Fa8IjyXERAcwc5YeQ8_NvbZ4_OI8LgqyjILpXUfS5YhEcnAMajKPrZI-og",
    penjelasan: "Udemy adalah situs web kursus online yang menawarkan ribuan kursus dalam berbagai bidang, seperti teknologi informasi, desain, bisnis, dan bahasa. Kursus-kursus ini disusun oleh instruktur ahli dan berisi video, bahan bacaan, dan tugas yang dapat diselesaikan oleh siswa.",
    situsUrl: "https://www.udemy.com/",
    isFavorite: false,
  ),
  SitusData(
    name: "Goodreads",
    image:
        "https://play-lh.googleusercontent.com/p0TzV6-CHE24ySIsC05vjGIS_PWaXIzE6Edzrw0VX7betQUtYY3FSFIKVjjMWJFXuj-u",
    penjelasan: "Goodreads adalah situs web yang memungkinkan pengguna untuk membaca dan meninjau buku, serta berinteraksi dengan orang-orang yang memiliki minat yang sama. Pengguna dapat membuat daftar bacaan, menilai dan meninjau buku, dan bergabung dengan grup bacaan.",
    situsUrl: "https://www.goodreads.com/",
    isFavorite: false,
  ),
  SitusData(
    name: "Spotify",
    image:
        "https://play-lh.googleusercontent.com/P2VMEenhpIsubG2oWbvuLGrs0GyyzLiDosGTg8bi8htRXg9Uf0eUtHiUjC28p1jgHzo",
    penjelasan: "Spotify adalah layanan streaming musik yang memungkinkan pengguna untuk mendengarkan jutaan lagu dari seluruh dunia. Pengguna dapat membuat daftar putar, menemukan musik baru, dan berinteraksi dengan artis favorit mereka. Selain itu, Spotify juga menawarkan podcast dan audio buku.",
    situsUrl: "https://www.spotify.com/",
    isFavorite: false,
  ),
  SitusData(
    name: "Medium",
    image:
        "https://cdn1.iconfinder.com/data/icons/social-media-circle-7/512/Circled_Medium_svg5-512.png",
    penjelasan: "Medium adalah platform publikasi online yang memungkinkan pengguna untuk menulis dan membaca artikel tentang berbagai topik, mulai dari teknologi hingga seni. Pengguna dapat mengikuti penulis favorit mereka dan memberikan suara pada artikel yang mereka sukai. Medium juga menawarkan fitur untuk membuat publikasi khusus untuk suatu topik tertentu.",
    situsUrl: "https://medium.com/",
    isFavorite: false,
  ),
  SitusData(
    name: "Khan Acedemy",
    image:
        "https://avatars.githubusercontent.com/u/15455?s=280&v=4",
    penjelasan: "Khan Academy adalah situs web belajar online yang menawarkan ribuan video pembelajaran interaktif gratis tentang berbagai topik, seperti matematika, sains, sejarah, dan banyak lagi. Selain itu, Khan Academy juga menawarkan latihan soal, kuis, dan proyek yang dirancang untuk membantu siswa memahami konsep yang diajarkan.",
    situsUrl: "https://www.khanacademy.org/",
    isFavorite: false,
  ),
  
];
