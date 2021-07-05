import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview/landing_page_view_model.dart';
import 'package:interview/views/chart/chart_view.dart';
import 'package:interview/views/home/home_view.dart';
import 'package:interview/views/notifications/notification_view.dart';
import 'package:interview/views/profile/profile_view.dart';
import 'package:stacked/stacked.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:() => MaterialApp(
        title: 'Flutter Demo',
        home: LandingPage(),
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
      ),
      designSize: const Size(360, 640),
    );
  }
}

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LandingPageViewModel>.reactive(
       builder: (context, model, child) => Scaffold(
         body: getViewForIndex(model.currentIndex),
         bottomNavigationBar: BottomNavigationBar(
           type: BottomNavigationBarType.fixed,
           currentIndex: model.currentIndex,
           onTap: model.setIndex,
           selectedItemColor: Colors.green,
           unselectedItemColor: Colors.grey,
           items: [
             BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
             BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Chart'),
             BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'Notifications'),
             BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: 'Profile'),
           ],
         ),
       ),
      viewModelBuilder: () => LandingPageViewModel(),
    );
  }
  Widget getViewForIndex(int index){
    switch(index){
      case 0:
        return HomeView();
      case 1:
        return ChartView();
      case 2:
        return NotificationView();
      case 3:
        return ProfileView();
      default:
        return HomeView();
    }
  }
}
