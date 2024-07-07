import 'package:flutter/material.dart';
import 'package:recipe/consent/colors.dart';
import 'package:recipe/screen/home.dart';

class Recipe extends StatelessWidget {
  Recipe({super.key});
  List icon = ['dough-rolling', 'cheese', 'meat', 'sausage'];
  List value = ['250g', '120g', '100g', '50g'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/lunch1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Container(
                        width: 80,
                        height: 4,
                        color: font,
                      )
                    ],
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(250, 250, 250, 0.6),
                    radius: 18,
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: font,
                    ),
                  ),
                ),
              ],
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(250, 250, 250, 0.6),
                  radius: 18,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Home();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: font,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: _getbody(),
            )
          ],
        ),
      ),
    );
  }

  Widget _getbody() {
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 33,
                    height: 33,
                    child: Image.asset('images/flash.png'),
                  ),
                  Container(
                    width: 33,
                    height: 33,
                    child: Image.asset('images/meat.png'),
                  ),
                  Container(
                    width: 33,
                    height: 33,
                    child: Image.asset('images/calories.png'),
                  ),
                  Container(
                    width: 33,
                    height: 33,
                    child: Image.asset('images/star.png'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '120',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '150',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '4.4',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Bahan-bahan',
                      style: TextStyle(
                        fontSize: 20,
                        color: font,
                        fontFamily: 'ro',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ...List.generate(
                        4,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(1, 1),
                                    color: Colors.grey,
                                    blurRadius: 7,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('images/${icon[index]}.png'),
                                  Text(
                                    value[index],
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: font,
                                      fontFamily: 'ro',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Resep',
                      style: TextStyle(
                        fontSize: 20,
                        color: font,
                        fontFamily: 'ro',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  "“Kembangkan” ragi dengan menaburkan gula dan ragi ke dalam air hangat. Diamkan selama 10 menit, hingga terbentuk gelembung di permukaan. Dalam mangkuk besar, campurkan tepung dan garam. Buat lubang di tengahnya dan tambahkan minyak zaitun dan campuran ragi yang sudah mekar. Dengan menggunakan sendok, aduk hingga adonan kasar mulai terbentuk. Setelah sebagian besar tepung terhidrasi, balikkan adonan ke permukaan kerja yang bersih dan uleni selama 10-15 menit. Adonannya harus lembut, halus, dan kenyal. Bentuk adonan menjadi bulat kencang. Olesi mangkuk besar yang bersih dengan minyak zaitun dan masukkan adonan ke dalamnya, balikkan hingga terlapisi minyak. Tutupi dengan bungkus plastik. Diamkan setidaknya selama satu jam, atau hingga 24 jam. Kempiskan adonan dan balikkan ke permukaan kerja yang diberi sedikit tepung. Uleni sekitar satu menit lagi, lalu potong menjadi 4 bagian yang sama dan bentuk bulat. Beri sedikit tepung pada adonan, lalu tutup dengan handuk dapur dan diamkan selama 30 menit hingga satu jam sambil menyiapkan saus dan bahan lainnya. Panaskan terlebih dahulu oven setinggi yang dimungkinkan oleh oven Anda, antara 450-500˚F (230-260˚C). Masukkan batu pizza, loyang tebal (balikkan agar permukaannya rata), atau wajan besi ke dalam oven. Sementara itu, buat saus tomat: Tambahkan garam ke dalam kaleng tomat dan haluskan dengan blender imersi, atau pindahkan ke dalam blender atau food processor, lalu haluskan hingga halus. Setelah adonan diistirahatkan, ambil sebagian dan mulailah dengan menusuk-nusuk permukaannya dengan ujung jari, hingga terbentuk gelembung-gelembung dan tidak mengempis. Kemudian, regangkan dan tekan adonan hingga tipis-tipis. bulat. Buatlah lebih tipis dari yang Anda kira, karena akan sedikit menyusut dan menggembung saat dipanggang. Taburkan semolina ke atas loyang terbalik dan letakkan kulit yang sudah diregangkan di atasnya. Tambahkan saus dan bahan pilihan Anda. Geser pizza ke atas batu atau wajan pizza yang sudah dipanaskan sebelumnya. Panggang selama 15 menit, atau sampai kulit dan keju berwarna coklat keemasan. Tambahkan hiasan apa pun sesuai selera. Kalori Nutrisi: 1691 Lemak: 65 gram Karbohidrat: 211 gram Serat: 12 gram Gula: 60 gram Protein: 65 gram Selamat menikmati!",
                  style: TextStyle(
                    fontSize: 18,
                    color: font,
                    fontFamily: 'ro',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
