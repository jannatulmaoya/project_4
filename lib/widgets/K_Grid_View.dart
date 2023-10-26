import 'package:flutter/material.dart';

import 'package:project_4/apps/modiuls/home/models/repo_model.dart';

import 'K_Text.dart';

class KGridView extends StatelessWidget {
  const KGridView({
    super.key,
    required this.data,
  });
  final List<RepoModel> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100 * data.length / 2,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 25, mainAxisSpacing: 25, crossAxisCount: 2),
          itemBuilder: (context, index) {
            RepoModel item = data[index];
            return KGridCard(
              item: item,
            );
          }),
    );
  }
}

class KGridCard extends StatelessWidget {
  const KGridCard({
    super.key,
    required this.item,
  });
  final RepoModel item;

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
              text: item.name,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
