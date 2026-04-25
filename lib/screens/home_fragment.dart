import 'package:flutter/material.dart';

import '../widgets/fragment_page_template.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return const FragmentPageTemplate(
      title: 'Home Feed',
      subtitle: 'Daily updates from your network and brand timeline.',
      icon: Icons.home,
      highlights: [
        'Trending stories curated for your audience',
        'Pinned content blocks for important campaigns',
        'Quick insights on engagement and reach',
      ],
    );
  }
}