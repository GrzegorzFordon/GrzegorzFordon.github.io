import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var githubIcon = SvgPicture.asset(
      "assets/icon/GitHub_Invertocat_White_Clearspace.svg",
      height: 32,
      width: 32,
      colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurfaceVariant, BlendMode.srcIn),
    );

    return Container(
      width: 200,
      // height: 256,
      // color: Colors.green,
      // decoration: BoxDecoration(color: Colors.blueAccent.withAlpha(50), borderRadius: BorderRadius.circular(5)),
      child: Column(
        spacing: 4,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(offset: Offset(5, 5), color: Theme.of(context).colorScheme.surfaceContainer)],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset("assets/profile.png", filterQuality: FilterQuality.high),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileButton(
                tooltip: "mail",
                iconData: Icons.mail_rounded,
                callback: () => _launchUrl("mailto:grzegorz.fordon+github@gmail.com"),
              ),
              IconButton(
                onPressed: () => _launchUrl("https://github.com/GrzegorzFordon"),
                icon: githubIcon,
                color: Theme.of(context).colorScheme.secondary,
                tooltip: "github",
              ),
              ProfileButton(tooltip: "resume", iconData: Icons.download_rounded, callback: null),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw Exception("Could not launch url");
  }
}

class ProfileButton extends StatelessWidget {
  final IconData iconData;
  final String tooltip;
  final VoidCallback? callback;
  const ProfileButton({super.key, required this.iconData, required this.tooltip, required this.callback});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip,
      onPressed: callback,
      icon: Icon(iconData),
      color: Theme.of(context).colorScheme.onSurfaceVariant,
      iconSize: 32,
    );
  }
}
