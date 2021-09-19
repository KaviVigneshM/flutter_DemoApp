import 'package:flutter/material.dart';

import 'Promo.dart';
import '../resources/string.dart';

class SpecialPromo extends StatelessWidget {
  final String roamingPromo = string.specialPromo;
  final String roamingSakto = string.gosakto;
  final String roamingPlanning = string.createWhatMatter;
  final String roamingRoam = string.promo;
  final String roamingExplore = string.createYourOwn;
  final String roamingImage = 'assets/images/spl_promo.png';

  @override
  Widget build(BuildContext context) {
    return Promo(roamingPromo, roamingSakto, roamingPlanning, roamingRoam,
        roamingExplore, roamingImage);
  }
}
