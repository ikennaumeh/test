import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChartView extends StatelessWidget {
  const ChartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 15.0.h),
                  child: Text('Top Up Receipt', style: TextStyle(color: Colors.white, fontSize: 17.sp, fontWeight: FontWeight.w400),),
                ),
                Stack(
                  children: [
                    ClipPath(
                      clipper: MovieTicketClipper(),
                      child: Container(
                        height: 400.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                          child: Column(
                            children: [
                              SizedBox(height: 12.h,),
                              Container(
                                height: 80,
                                width: 80,
                                child: FlutterClipPolygon(
                                  sides: 8,
                                  borderRadius: 5,
                                  child: Container(color: Colors.deepOrange, child: Icon(Icons.check, color: Colors.white, size: 50,),),
                                ),
                              ),
                              SizedBox(height: 5.h,),
                              Text('Top Up Success', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),),
                              SizedBox(height: 10.h,),
                              Text('Your top up has been successfully done', style: TextStyle(color: Colors.grey, fontSize: 15.sp, fontWeight: FontWeight.w400),),
                              SizedBox(height: 13.h,),
                              Text('Total Top Up',  style: TextStyle(color: Colors.grey, fontSize: 15.sp, fontWeight: FontWeight.w400),),
                              SizedBox(height: 10.h,),
                              Text('\$132.00', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 23.sp),),
                              SizedBox(height: 10.h,),
                              DottedLine(lineLength: double.infinity, dashColor: Colors.grey,),
                              SizedBox(height: 13.h,),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('Top Destination',),
                              ),
                              SizedBox(height: 10.h,),
                              Container(
                                height: 60.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: Colors.grey.withOpacity(.3),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   Padding(
                                     padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                                     child: Container(
                                       height: 30.h,
                                       width: 30.w,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(12),
                                         color: Colors.white,
                                       ),
                                       child: Icon(Icons.note),
                                     ),
                                   ),

                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Text('Wally Virtual Card', style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),),
                                       Text('0291-2329-2391 . 3.02pm'),
                                     ],
                                   ),
                                   SizedBox(width: 40.w,),
                                 ],
                                ),
                              ),
                              SizedBox(height: 10.h,),
                              SizedBox(
                                width: double.infinity,
                                child: TextButton(
                                  onPressed: (){},
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Colors.green[900]),
                                  ),
                                  child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0.h),
                                  child: Text('Done', style: TextStyle(color: Colors.white),),
                                ),),
                              ),
                              SizedBox(height: 10.h,),
                              Text('Top Up More Money', style: TextStyle(fontSize: 13.h, color: Colors.green[800]),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 185.h,
                      left: -15.w,
                        child: CircleAvatar(radius: 15, backgroundColor: Colors.green[900],),
                    ),
                    Positioned(
                      top: 185.h,
                      right: -15.w,
                      child: CircleAvatar(radius: 15, backgroundColor: Colors.green[900],),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
