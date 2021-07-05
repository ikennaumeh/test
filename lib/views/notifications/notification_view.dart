import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationView extends StatelessWidget {

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
                                Container(
                                  height: 30.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(Icons.arrow_back, color: Colors.white,),
                                ),
                                Text('Your Credit Card', style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400, color: Colors.white),),
                                SizedBox(width: 10.w,),
                              ],
                            ),
                            SizedBox(height: 30.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Your credit card has been \nsuccessfully added', style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w400, color: Colors.white54),),
                                Container(
                                  height: 30.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.yellow.shade700,
                                  ),
                                  child: Icon(Icons.add, color: Colors.white,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ATMCard(
                      cardColor: Colors.green,
                      height: 160,
                      left: 30,
                      right: 30,
                      bottom: 10,
                      elevation: 10,
                    ),
                    ATMCard(
                      cardColor: Colors.orange,
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
                            Text('\$ 0.0', style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w400, color: Colors.white),),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      children: [
                        getListTile(Icons.settings, 'Set Limit'),
                        getListTile(Icons.lock, 'Lock Card'),

                      ],
                    ),
                  ),
                  SizedBox(height: 80.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.0.w, vertical: 10.h),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0.h),
                          child: Text('Top Up Now'),
                        ),
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ATMCard extends StatelessWidget {
  const ATMCard({
    Key? key,
    this.bottom,
    this.child,
    this.elevation,
    this.left,
    this.right,
    this.cardColor,
    this.height,
  }) : super(key: key);

  final double? left;
  final double? right;
  final double? bottom;
  final double? elevation;
  final Color? cardColor;
  final Widget? child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      left: left,
      right: right,
      child: Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: cardColor ?? Colors.green,
        child: Container(
          height: height ?? 140,
          width: double.infinity,
          child: child,
        ),
      ),
    );
  }
}

