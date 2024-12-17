import 'riv_model.dart';

class NavItemModel {
  final String title;
  final RivModel rive;

  NavItemModel({required this.title, required this.rive});
}

List<NavItemModel> bottomNavItems = [
  NavItemModel(
    title: "Chat",
    rive: RivModel(
        src: "assets/animated_icon_set_-_1_color.riv",
        artboard: "CHAT",
        StateMachineName: "CHAT_Interactivity"),
  ),
  NavItemModel(
    title: "Search",
    rive: RivModel(
        src: "assets/animated_icon_set_-_1_color.riv",
        artboard: "SEARCH",
        StateMachineName: "SEARCH_Interactivity"),
  ),
  NavItemModel(
    title: "Timer",
    rive: RivModel(
        src: "assets/animated_icon_set_-_1_color.riv",
        artboard: "TIMER",
        StateMachineName: "TIMER_Interactivity"),
  ),
  NavItemModel(
    title: "Notification",
    rive: RivModel(
        src: "assets/animated_icon_set_-_1_color.riv",
        artboard: "BELL",
        StateMachineName: "BELL_Interactivity"),
  ),
  NavItemModel(
    title: "Profile",
    rive: RivModel(
        src: "assets/animated_icon_set_-_1_color.riv",
        artboard: "USER",
        StateMachineName: "USER_Interactivity"),
  ),
];
