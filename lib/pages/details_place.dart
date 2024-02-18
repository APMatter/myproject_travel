import 'package:flutter/material.dart';
import 'package:myproject_travel/components/Home_page/heading.dart';
import 'package:myproject_travel/components/Home_page/search.dart';
import 'package:myproject_travel/components/Home_page/label_section_pop.dart';
import 'package:myproject_travel/components/Home_page/card.dart';

import 'package:myproject_travel/utils/styles.dart';

class SecoundPage extends StatelessWidget {
  const SecoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: const Text('Second sreen'),
      ),
    );
  }
}
