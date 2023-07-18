import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solusi_digital_berita/models/articles_model.dart';
import 'package:solusi_digital_berita/theme.dart';
import 'package:solusi_digital_berita/views/screens/detail_berita.dart';

class BeritaCard extends StatelessWidget {
  const BeritaCard({required this.article, super.key});

  final Articles article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailBerita(article: article);
        }));
      },
      child: Container(
        margin: EdgeInsets.all(defaultMargin),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                article.urlToImage.toString(),
                width: 342,
                height: 152,
                fit: BoxFit.cover,
              ),
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
                    article.title.toString(),
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
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Baca Selengkapnya...',
                    style: alertTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
