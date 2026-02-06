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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 4,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(offset: Offset(5, 5), color: Theme.of(context).colorScheme.surfaceContainer)],
                ),
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset("assets/profile.png", filterQuality: FilterQuality.high),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  clipBehavior: Clip.none,
                  // color: Colors.blue.withAlpha(100),
                  height: 200,
                  width: 280,
                  child: Column(
                    children: [
                      Expanded(child: PageViewProfile(key: ValueKey(0),)),
                      Expanded(child: PageViewProfile(key: ValueKey(1),)),
                      Expanded(child: PageViewProfile(key: ValueKey(2),)),
                    ],
                  ),
                ),
              ),
            ],
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

class PageViewProfile extends HookWidget {
  const PageViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var pageController = usePageController(initialPage: 1000, keepPage: true);
    Duration duration = Duration(milliseconds: 500);
    Curve curve = Curves.easeOutBack;
    List<Color> colors = [Colors.transparent.withAlpha(0), Colors.green, Colors.yellow, Colors.red];
    return Container(
      width: 280,
      clipBehavior: Clip.none,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => pageController.previousPage(duration: duration, curve: curve),
            icon: Icon(Icons.arrow_back_ios_rounded,),
            color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
          ),
          SizedBox(
            width: 200,
            child: PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) => index % colors.length == 0
                  ? SizedBox()
                  : Container(color: colors[index % colors.length].withAlpha(100)),
            ),
          ),
          IconButton(
            onPressed: () => pageController.nextPage(duration: duration, curve: curve),
            icon: Icon(Icons.arrow_forward_ios_rounded,),
            color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
          ),
        ],
      ),
    );
  }
}
