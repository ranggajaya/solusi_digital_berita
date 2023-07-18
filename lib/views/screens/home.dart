// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solusi_digital_berita/bloc/article_bloc.dart';
import 'package:solusi_digital_berita/models/articles_model.dart';
import 'package:solusi_digital_berita/theme.dart';
import 'package:solusi_digital_berita/views/widgets/antrian_card.dart';
import 'package:solusi_digital_berita/views/widgets/berita_card.dart';
import 'package:solusi_digital_berita/views/widgets/voucher_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: Container(
          margin: EdgeInsets.all(defaultMargin),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      'Hi, Rangga Jaya Kusumah',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/profile.png'),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: defaultMargin,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                height: 40,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  border: Border.all(
                    color: Color(0xffE3E3E3),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: searchTextColor,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Cari Klinik / Rumah Sakit",
                          hintStyle: searchTextStyle.copyWith(fontSize: 12),
                          //hoverColor: Colors.transparent,
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // children:
        //   [Row(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       Expanded(
        //         child: Text(
        //           'Hi, Rangga Jaya Kusumah',
        //           style: primaryTextStyle.copyWith(
        //             fontSize: 12,
        //             fontWeight: medium,
        //           ),
        //           textAlign: TextAlign.end,
        //         ),
        //       ),
        //       SizedBox(
        //         width: 17,
        //       ),
        //       Container(
        //         width: 20,
        //         height: 20,
        //         decoration: const BoxDecoration(
        //           shape: BoxShape.circle,
        //           image: DecorationImage(
        //             image: AssetImage('assets/profile.png'),
        //           ),
        //         ),
        //       )
        //     ],
        //   ),
        // ],
      );
    }

    /*  Widget search() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        height: 40,
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          border: Border.all(
            color: Color(0xffE3E3E3),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: searchTextColor,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: TextFormField(
                initialValue: null,
                decoration: InputDecoration.collapsed(
                  filled: true,
                  fillColor: Colors.transparent,
                  hintText: "Cari Klinik / Rumah Sakit",
                  hintStyle: searchTextStyle.copyWith(fontSize: 12),
                  //hoverColor: Colors.transparent,
                ),
                onFieldSubmitted: (value) {},
              ),
            ),
          ],
        ),
      );
    } */

    Widget antrian() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: defaultMargin),
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
        ),
        height: 143,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff0093DD),
              Color(0xffDD127B),
            ],
          ),
        ),
        child: AntrianCard(),
      );
    }

    Widget menuItem() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: LayoutBuilder(
          builder: (context, constraint) {
            List menus = [
              {
                "icon": "assets/klinik.png",
                "label": "KLINIK TERDEKAT",
                "onTap": () {},
              },
              {
                "icon": "assets/riwayat.png",
                "label": "RIWAYAT",
                "onTap": () {},
              },
              {
                "icon": "assets/scan.png",
                "label": "DATA SCAN",
                "onTap": () {},
              },
              {
                "icon": "assets/notifikasi.png",
                "label": "NOTIFIKASI",
                "onTap": () {},
              },
              {
                "icon": "assets/rate.png",
                "label": "BERI NILAI",
                "onTap": () {},
              },
              {
                "icon": "assets/setting.png",
                "label": "PENGATURAN",
                "onTap": () {},
              },
            ];

            return Wrap(
              children: List.generate(
                menus.length,
                (index) {
                  var item = menus[index];

                  var size = constraint.biggest.width / 3;

                  return SizedBox(
                    width: size,
                    height: size,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blueGrey,
                        animationDuration: const Duration(milliseconds: 1000),
                        backgroundColor: Colors.transparent,
                        splashFactory: InkSplash.splashFactory,
                        shadowColor: Colors.transparent,
                        elevation: 0.0,
                      ),
                      onPressed: () => item["onTap"](),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item["icon"],
                            width: 55,
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            "${item["label"]}",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: primaryTextStyle.copyWith(
                                fontSize: 10, fontWeight: medium),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      );
    }

    Widget voucher() {
      return VoucherCard();
    }

    Widget berita() {
      return Container(
          margin: EdgeInsets.only(
            top: 14,
          ),
          child: BlocBuilder<ArticleBloc, ArticleState>(
            builder: (context, state) {
              if (state is ArticleLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is ArticleSuccess) {
                final article = state.article;

                return ListView.builder(
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    final articleData = article[index];

                    return BeritaCard(
                        article: articleData.articles as Articles);
                  }),
                );
              } else {
                return Center(
                  child: Text('Failed to fetch articles'),
                );
              }
            },
          ));
    }

    Widget content() {
      return ListView(
        children: [
          antrian(),
          menuItem(),
          voucher(),
          berita(),
        ],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: SafeArea(child: header()),
      ),
      body: content(),
    );
  }
}
