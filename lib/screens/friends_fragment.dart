import 'package:flutter/material.dart';

import '../widgets/fragment_page_template.dart';

class FriendsFragment extends StatelessWidget {
  const FriendsFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return const FragmentPageTemplate(
      title: 'Connections',
      subtitle: 'Manage friends, creators, and close collaborators.',
      icon: Icons.people,
      highlights: [
        'Smart suggestions based on shared interests',
        'Custom friend groups for targeted sharing',
        'Fast invite flow for new collaborators',
      ],
    );
  }
}