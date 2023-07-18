import 'package:flutter/material.dart';
import 'package:solusi_digital_berita/models/articles_model.dart';
import 'package:solusi_digital_berita/theme.dart';

class DetailBerita extends StatelessWidget {
  const DetailBerita({Key? key, required this.article}) : super(key: key);

  final Articles article;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        elevation: 0,
        title: Text(
          article.title.toString(),
          style: titleTextStyle.copyWith(fontSize: 20, fontWeight: medium),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Column(
          children: [
            Image.network(
              article.urlToImage.toString(),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '6 Waktu yang Tepat untuk Minum Air Putih Agar Tetap Bugar',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Sumber: ${article.source!.name.toString()}',
                    style: thirdTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    article.publishedAt.toString(),
                    style: thirdTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    article.content.toString(),
                    style: primaryTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(54),
        child: SafeArea(child: header()),
      ),
      body: content(),
    );
  }
}
