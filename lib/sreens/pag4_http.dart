import 'package:flutter/material.dart';
import 'package:iti_flutter/models/user.dart';
import 'package:iti_flutter/services/user_services.dart';
import 'package:iti_flutter/sreens/user_details_page4.dart';
import 'package:iti_flutter/widget/card_design.dart';

class Page4Http extends StatefulWidget {

  @override
  _Page4HttpState createState() => _Page4HttpState();
}

class _Page4HttpState extends State<Page4Http> {
  bool loading = true ;
  List <User> users = [];
 getUserList()async{
users = await UserServices().getUser();
loading = false;
setState(() {

});

}
  void push(List user , int i){
    Navigator.push(context, MaterialPageRoute(builder:(context)
    {return UserDetails(users[i]);} ));
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,

      ),
      body: loading ? Center(
          child: CircularProgressIndicator()):
      ListView.builder(
        itemCount: users.length,
        itemBuilder: (context , i){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child:GestureDetector(child: CardDesign(content:'${users[i].name}',)
            ,onTap: (){
              push(users, i);
                // Navigator.push(context, MaterialPageRoute(builder:(context)
                // {return UserDetails(users[i]);} ));
              },),
          );
        },
      ),
    );
  }
}
