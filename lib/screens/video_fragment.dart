import 'package:flutter/material.dart';

import '../widgets/fragment_page_template.dart';

class VideoFragment extends StatelessWidget {
  const VideoFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return const FragmentPageTemplate(
      title: 'Video Studio',
      subtitle: 'Publish short reels and long-form content with confidence.',
      icon: Icons.video_collection,
      highlights: [
        'Upload queue with progress tracking',
        'Caption presets and template support',
        'Performance snapshot for each video',
      ],
    );
  }
}