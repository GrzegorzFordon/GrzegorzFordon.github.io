import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileView extends HookWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var githubIcon = SvgPicture.asset(
      "assets/icon/GitHub_Invertocat_White_Clearspace.svg",
      height: 32,
      width: 32,
      colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurfaceVariant, BlendMode.srcIn),
    );
    var isSillyHook = useState(false);
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
            child: GestureDetector(
              onTap: () => isSillyHook.value = !isSillyHook.value,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset("assets/profile.png", filterQuality: FilterQuality.high),
                  ),
                  if (isSillyHook.value)
                    Positioned(
                      left: 110,
                      top: 45,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                        height: 20,
                        width: 20,
                        child: Transform.scale(
                          scale: 0.5,
                          child: Transform.translate(
                            offset: Offset(2, 2),
                            child: Container(
                              constraints: BoxConstraints(maxHeight: 5, maxWidth: 5),
                              decoration: BoxDecoration(color: Colors.brown, shape: BoxShape.circle),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (isSillyHook.value)
                    Positioned(
                      left: 85,
                      top: 50,
                      child: Container(
                        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                        height: 15,
                        width: 15,
                        child: Transform.scale(
                          scale: 0.5,
                          child: Transform.translate(
                            offset: Offset(2, 2),
                            child: Container(
                              constraints: BoxConstraints(maxHeight: 5, maxWidth: 5),
                              decoration: BoxDecoration(color: Colors.brown, shape: BoxShape.circle),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
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
