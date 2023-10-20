import 'package:flutter/material.dart';

import 'K_Text.dart';

class Klistview extends StatelessWidget {
  const Klistview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100 * 20,
        child: ListView.separated(
          itemCount: 20,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return Kcard(
              Ksize: "$index",
            );
          },
        ));
  }
}

class Kcard extends StatelessWidget {
  const Kcard({
    super.key,
    required this.Ksize,
  });
  final String Ksize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Object");
      },
      child: Container(
        height: 100,
        width: 1000,
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KText(
                  text: "text, $Ksize",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                SizedBox(
                  height: 5,
                ),
                KText(text: "dart")
              ],
            )
          ],
        ),
      ),
    );
  }
}
