import 'package:flutter/material.dart';
import 'package:zing_app/modules/home_page.dart';

// ignore: camel_case_types
class Detail_Account extends StatelessWidget {
  static String routeName="/detail_account";
  const Detail_Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding:const EdgeInsets.only(top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // text + icon color
                  ),
                  icon: const Icon(Icons.arrow_back_ios_outlined),
                  label:const Text('',),
                  onPressed: (){Navigator.pushNamed(context, Home.routeName);},
                ),
                const Text("Tài khoản cá nhân",style: TextStyle(fontSize: 22,color: Colors.black),),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, // text + icon color
                  ),
                  icon: const Icon(Icons.settings),
                  label:const Text('',),
                  onPressed: (){},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: SizedBox(
              height: 90.0,
              width: 90.0,
              child: ClipRRect(
                borderRadius:const BorderRadius.all(Radius.circular(50)),
                child:Image.asset(
                  'assets/images/avatar_comment.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text("Hoài Sơn", style: TextStyle(fontSize: 25,color: Colors.black),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              height: 120,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: const[
                  BoxShadow(
                    color: Color(0xffDDDDDD),
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.0, 0.0),
                  )
                ],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Bạn đang sử dụng gói nghe nhạc miễn phí,'
                        'nâng cấp tài khoản để trải nghiệm âm nhạc tốt hơn',
                      style: TextStyle(color: Color.fromRGBO(90, 90, 90, 0.9),fontSize: 15)),
                  ),

                  Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.yellow,
                      boxShadow:const [
                        BoxShadow(
                          color: Color(0xffDDDDDD),
                          blurRadius: 6.0,
                          spreadRadius: 2.0,
                          offset: Offset(0.0, 0.0),
                        )
                      ],
                    ),
                    child:const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text('NÂNG CẤP TÀI KHOẢN',textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),),
                    )
                  )
                ],
              ),

            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16,30,0,0),
            child: Align(
              alignment:Alignment.topLeft,
              child: Text("Cá nhân",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8),
            child:Column(
              children: [
                Align(
                  alignment:Alignment.topLeft,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black, // text + icon color
                    ),
                    icon: const Icon(Icons.person_add_outlined,),
                    label:const Text('Danh sách quan tâm',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                    onPressed: (){},
                  ),
                ),
                Align(
                  alignment:Alignment.topLeft,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black, // text + icon color
                    ),
                    icon: const Icon(Icons.block,),
                    label:const Text('Danh sách chặn',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                    onPressed: (){},
                  ),
                ),
                Align(
                  alignment:Alignment.topLeft,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black, // text + icon color
                    ),
                    icon: const Icon(Icons.hide_source_outlined,),
                    label:const Text('Danh sách tạm ẩn',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                    onPressed: (){},
                  ),
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: 3,
              color: const Color.fromRGBO(90, 90, 90, 0.1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Align(
              alignment:Alignment.topLeft,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black, // text + icon color
                ),
                icon: const Icon(Icons.logout_outlined,),
                label:const Text('Đăng xuất tài khoản',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                onPressed: (){},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
