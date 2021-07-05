import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview/views/notifications/notification_view.dart';
class ProfileView extends StatelessWidget {

   Widget getListTile(IconData icon, String text,){
     return ListTile(
       leading: Icon(icon, color: Colors.green[800],),
       title: Text(text, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
       trailing: Icon(Icons.arrow_forward_ios_sharp, size: 18,),
     );
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: 330.h,
                      decoration: BoxDecoration(
                        color: Colors.green[800],
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               Text('My Profile', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400, color: Colors.white),),
                                Container(
                                  height: 30.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(Icons.qr_code, color: Colors.white,),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.h,),
                            Row(
                             // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(radius: 50, backgroundColor: Colors.yellow, child: Icon(Icons.perm_identity, size: 50, color: Colors.black,),),
                                SizedBox(width: 10.w,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Bianca Cooper', style: TextStyle(fontSize: 19.sp,color: Colors.white, fontWeight: FontWeight.w400, letterSpacing: 4),),
                                    SizedBox(height: 5.h,),
                                    Text('(480) 555-0103', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, wordSpacing: 4, color: Colors.white70),),
                                    SizedBox(height: 5.h,),
                                    Text('bianca@example.com', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, wordSpacing: 4, color: Colors.white70),),

                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ATMCard(
                      cardColor: Colors.yellow,
                      height: 160,
                      left: 30,
                      right: 30,
                      bottom: 10,
                      elevation: 10,
                    ),
                    ATMCard(
                      cardColor: Colors.green,
                      height: 160,
                      left: 15,
                      right: 15,
                      bottom: -5,
                      elevation: 20,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15.h,),
                            Text('Balance',  style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400, wordSpacing: 4, color: Colors.white70),),
                            SizedBox(height: 10.h,),
                            Text('\$26,968.00', style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w400, color: Colors.white),),
                            SizedBox(height: 10.h,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.keyboard, color: Colors.white60, size: 40,),
                                SizedBox(width: 10.w,),
                                Text('**** **** **** 1234', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400, wordSpacing: 7, color: Colors.white70),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    getListTile(Icons.perm_identity, 'Personal'),
                    getListTile(Icons.lock, 'Privacy & Security'),
                    getListTile(Icons.card_giftcard_sharp, 'Offers & Reward'),
                    getListTile(Icons.help, 'Help'),
                    getListTile(Icons.logout, 'Logout'),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
