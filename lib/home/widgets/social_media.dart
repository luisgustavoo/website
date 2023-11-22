import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/core/widgets/button_app.dart';

class SocialMedia extends StatelessWidget {
  SocialMedia({super.key});

  final Uri _uriLinkedin =
      Uri.parse('https://www.linkedin.com/in/luis-gustavo-1a669942/');
  final Uri _uriGithub = Uri.parse('https://github.com/luisgustavoo');

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonApp(
          icon: SvgPicture.asset(
            'assets/images/linkedin.svg',
            height: 16.h,
            width: 16.w,
          ),
          label: 'LinkedIn',
          width: 100.w,
          onPressed: () async {
            await _launchUrl(_uriLinkedin);
          },
        ),
        SizedBox(
          width: 50.w,
        ),
        ButtonApp(
          icon: SvgPicture.asset(
            'assets/images/github-white.svg',
            height: 16.h,
            width: 16.w,
          ),
          label: 'GitHub',
          width: 100.w,
          onPressed: () async {
            await _launchUrl(_uriGithub);
          },
        ),
      ],
    );
  }

  Future<void> _launchUrl(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
      );
    }
  }
}
