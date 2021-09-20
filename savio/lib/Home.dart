

import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.black.withOpacity(0.9),
        title: Text("Profile"),
        centerTitle: true,
              ),

              body: Container(
               
                decoration: BoxDecoration(
                image:DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1597773150796-e5c14ebecbf5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                fit:BoxFit.cover,
               
                ) ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children:[
                  SizedBox(
                    height:40
                  ),
                 
                  Container(
                   
                    height: 130,
                    width: 130,

                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(99),
                    image: DecorationImage(image: NetworkImage("https://scontent.fcok6-1.fna.fbcdn.net/v/t1.6435-9/98093629_1479350532234978_7429108006811336704_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=xGQwpPTpkFwAX8egu3i&_nc_ht=scontent.fcok6-1.fna&oh=52874f42de7e5b8b0d3e88b6d1a4ec09&oe=616F6973"),
                    fit: BoxFit.cover),
                  ),

                  ),
                  SizedBox(
                    height: 50,
                  ),

                  Expanded(child: 
                  Container(
                   
                    
                    decoration:BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius:BorderRadius.only(topLeft:Radius.circular(50),topRight:Radius.circular(50))
                    ),
                    child:
                    ListView(
                      
                      
                      children:[
                        SizedBox(height: 20),
                        profiletext("User Name","Savio"),
                        profiletext("Email Id","saviosabu1@gmail.com"),
                        profiletext("Phone","+91 8921401633"),
                        profiletext("Gender","Male"),
                        profiletext("Date Of Birth","March 31 2001"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[
                            Accounts("Svz333","https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/1024px-Instagram_icon.png"),
                            Accounts("Savio Sabu","https://www.freepnglogos.com/uploads/facebook-logo-icon/facebook-logo-icon-file-facebook-icon-svg-wikimedia-commons-4.png"),
                            Accounts("savio sabu","https://www.freepnglogos.com/uploads/official-linkedin-logo----17.png"),
                            Accounts("svz 1","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzpUN6yhPjDbIPLhCSEXdnqaBqCj4IYrrbHw&usqp=CAU"),
                            ]
                        )

                        
                       


                      ]
                    )
                  )
                  )

                ]
              ),
              
              )
      
    );
  }
}

class Accounts extends StatelessWidget {
  String id ; 
  String url ; 
  Accounts(this.id,this.url) ; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration:BoxDecoration(
            image: DecorationImage(image: NetworkImage(url))
          ),
        ),
        SizedBox(height:10),
        Text(id,style:TextStyle(color:Colors.white))
      ],
    );
  }
}

class profiletext extends StatelessWidget {
  String value;
  String param; 
  profiletext(this.param,this.value) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom:5 ),
     
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
           Text(param,style:TextStyle(color:Colors.grey[300],fontSize: 15)),
           SizedBox(
             height: 5,
           ),
      Text(value,style:TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:Colors.white)),
      SizedBox(height: 5),
      Divider(

        color: Colors.grey[100]!.withOpacity(0.6),
      )
        
        ],
      ),
    );
  }
}

