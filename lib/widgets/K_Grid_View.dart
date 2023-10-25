import 'package:flutter/material.dart';

import 'K_Text.dart';

class KGridView extends StatelessWidget {
  const KGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100 * 10,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 25, mainAxisSpacing: 25, crossAxisCount: 2),
        itemBuilder: (context, index) => KGridCard(),
      ),
    );
  }
}

class KGridCard extends StatelessWidget {
  const KGridCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        color: Colors.pink,
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KText(
              text: "Repo",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            KText(text: "Repo")
          ],
        ),
      ),
    );
  }
}
