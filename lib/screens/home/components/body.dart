import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recomends_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_bbtn.dart';

import 'featured_plants.dart';
import 'header_with_sized_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(children: [
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(
          title: "Recommended",
          press: () {},
        ),
        const RecomendsPlants(),
        TitleWithMoreBtn(title: "Featured Plants", press: () {}),
        const FeaturedPlants(),
        const SizedBox(
          height: kDefaultPadding,
        )
      ]),
    );
  }
}
