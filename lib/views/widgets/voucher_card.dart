import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VoucherCard extends StatefulWidget {
  const VoucherCard({Key? key}) : super(key: key);

  @override
  State<VoucherCard> createState() => _VoucherCardState();
}

class _VoucherCardState extends State<VoucherCard> {
  List images = [
    'assets/voucher.png',
    'assets/voucher.png',
    'assets/voucher.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    int index = -1;

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index
              ? const Color(0xff0093DD)
              : const Color(0xffc4c4c4),
        ),
      );
    }

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: 342,
          height: 103,
          child: CarouselSlider(
            options: CarouselOptions(
                viewportFraction: 0.99,
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
            items: images.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                          child: Image.asset(
                        i,
                        fit: BoxFit.contain,
                      )),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.map((e) {
            index++;
            return indicator(index);
          }).toList(),
        ),
      ],
    );
  }
}
