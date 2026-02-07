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
    // var isSillyHook = useState(false);
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 4,
        children: [
          Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [BoxShadow(offset: Offset(5, 5), color: Theme.of(context).colorScheme.surfaceContainer)],
                  ),
                  width: 200,
                  // height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset("assets/profile.png", filterQuality: FilterQuality.high),
                  ),
                ),
                // Image.asset("assets/profile.png", filterQuality: FilterQuality.high),
                Column(
                  children: [
                    PageViewProfile(key: ValueKey(0), isTop: true),
                    PageViewProfile(key: ValueKey(1), isTop: false),
                  ],
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

class PageViewProfile extends HookWidget {
  final bool isTop;
  const PageViewProfile({super.key, required this.isTop});

  @override
  Widget build(BuildContext context) {
    int topAmount = 6;
    int bottomAmount = 6;

    int startPage = topAmount * bottomAmount * 100;
    var pageController = usePageController(initialPage: startPage, keepPage: true);
    Duration duration = Duration(milliseconds: 500);
    Curve curve = Curves.easeOutBack;
    return Container(
      // constraints: BoxConstraints(maxWidth: 280, maxHeight: 200),
      // width: 280,
      height: 100,
      // clipBehavior: Clip.none,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: isTop ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => pageController.jumpToPage((pageController.page!-1).toInt()),
            icon: Icon(Icons.arrow_back_ios_rounded),
            color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
          ),
          Container(
            width: 200,
            child: PageView.builder(
              key: PageStorageKey(key),
              pageSnapping: true,
              controller: pageController,
              // itemCount: 5,
              itemBuilder: (context, index) => index % (isTop ? topAmount : bottomAmount) == 0
                  ? SizedBox()
                  : Image.asset("assets/profile/${isTop ? "top" : "mid"}${index % (isTop ? topAmount : bottomAmount)}.png"),
            ),
          ),
          IconButton(
            onPressed: () => pageController.jumpToPage((pageController.page!+1).toInt()),
            icon: Icon(Icons.arrow_forward_ios_rounded),
            color: Theme.of(context).colorScheme.onSurface.withAlpha(100),
          ),
        ],
      ),
    );
  }
}
