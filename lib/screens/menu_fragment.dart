import 'package:flutter/material.dart';

import '../widgets/fragment_page_template.dart';

class MenuFragment extends StatelessWidget {
  const MenuFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return const FragmentPageTemplate(
      title: 'Workspace Menu',
      subtitle: 'Control account settings, privacy, and workflow tools.',
      icon: Icons.menu,
      highlights: [
        'Profile, branding, and account preferences',
        'Saved drafts and reusable publishing templates',
        'Security center with sign-in activity',
      ],
    );
  }
}