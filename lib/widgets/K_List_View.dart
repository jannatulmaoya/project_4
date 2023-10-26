import 'package:flutter/material.dart';

import '../apps/modiuls/home/models/repo_model.dart';
import 'K_Text.dart';

class Klistview extends StatelessWidget {
  const Klistview({
    super.key,
    required this.data,
  });
  final List<RepoModel> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120 * data.length.toDouble(),
        child: ListView.separated(
          itemCount: data.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            RepoModel item = data[index];
            return Kcard(
              item: item,
            );
          },
        ));
  }
}

class Kcard extends StatelessWidget {
  const Kcard({
    super.key,
    required this.item,
  });

  final RepoModel item;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 260,
              child: KText(
                text: item.name,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
