import 'package:flutter/material.dart';

import '../widgets/fragment_page_template.dart';

class NotificationFragment extends StatelessWidget{
  const NotificationFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return const FragmentPageTemplate(
      title: 'Notifications',
      subtitle: 'Stay informed with priority-first alert management.',
      icon: Icons.notifications,
      highlights: [
        'Filter alerts by type and urgency',
        'Mute non-critical updates during focus hours',
        'Actionable notification cards with deep links',
      ],
    );
  }
}