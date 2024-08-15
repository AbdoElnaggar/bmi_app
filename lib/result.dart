 // ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, prefer_const_constructors_in_immutables, unused_local_variable, unused_element

 import 'package:bmi_app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class result_view extends StatefulWidget {
  const result_view ({super.key,});

  @override
  State<result_view > createState() => _result();
   
}

class _result extends State<result_view > {
 

  @override
  Widget build(BuildContext context) {
   
var res =ModalRoute.of(context)!.settings.arguments as double;
Color color=Colors.white;
String getclass(){
  if(res<=18.5){
    color=Colors.red;
    return "underwieght";
  }
  else if(res <=24.9){
    color=Colors.green;
     return 'Normal';
  }
  else if(res<=39.9){
    color=Colors.yellow;
    return "Overwiegth";
  }
  else{
    color=Colors.red;
    return 'obse';
  }
}

    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: App_colors.backgroung,
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, '/');
        },icon: Icon(Icons.arrow_back_ios),color: App_colors.icon,)
      ),
        backgroundColor: App_colors.backgroung,
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 100,),
         Text("Your Result",style: TextStyle(fontSize: 20,color: App_colors.icon),),
         SizedBox(height: 30,),
        
         Expanded(
           child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                          color: App_colors.backgroung_container,
                          borderRadius: BorderRadius.circular(8),
                        ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 55,),
                Text(getclass(),style: TextStyle(color:color,
                fontSize: 22),),
        
                SizedBox(height: 55,),
                Text(res.toStringAsFixed(2),
                style:
                TextStyle(color: App_colors.icon,
                fontSize: 80),),
                SizedBox(height: 55,),
                Text("your body wiegth is normal ,healthy and good",style: TextStyle(color: App_colors.icon,fontSize: 20),),
        
              ],
            ),
           ),
         ),
         SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(bottom: 12),
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Text("Recalcoulate",style: TextStyle(fontSize: 25),)),
                ),
        ],
        ),
      ),
      
    );
  }
}