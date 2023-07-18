import 'package:flutter/material.dart';

import 'package:solusi_digital_berita/theme.dart';

class AntrianCard extends StatelessWidget {
  const AntrianCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'INFO ANTRIAN',
          style: titleTextStyle.copyWith(fontSize: 12, fontWeight: bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 1,
          color: primaryColor,
        ),
        Row(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/circle1.png',
                  width: 76,
                ),
                Positioned(
                  bottom: 24,
                  left: 24,
                  child: Text(
                    '21',
                    style: titleTextStyle.copyWith(
                        fontSize: 25, fontWeight: medium),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/circle2.png',
                  width: 57,
                ),
                Positioned(
                  bottom: 12,
                  left: 21,
                  child: Text(
                    '5',
                    style: titleTextStyle.copyWith(
                        fontSize: 25, fontWeight: medium),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: defaultMargin,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dokter anda',
                  style: secondaryTextStyle.copyWith(
                      fontSize: 9, fontWeight: medium),
                ),
                Text(
                  'dr.Rina Agustina',
                  style:
                      titleTextStyle.copyWith(fontSize: 9, fontWeight: medium),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Klinik/RS anda',
                  style: secondaryTextStyle.copyWith(
                      fontSize: 9, fontWeight: medium),
                ),
                Text(
                  'RS. National Hospital',
                  style:
                      titleTextStyle.copyWith(fontSize: 9, fontWeight: medium),
                ),
              ],
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              Text(
                'Nomor Antrian',
                style: titleTextStyle.copyWith(fontSize: 9, fontWeight: bold),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Sisa Antrian',
                style: titleTextStyle.copyWith(fontSize: 9, fontWeight: bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
