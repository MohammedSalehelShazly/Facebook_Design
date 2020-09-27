import 'package:flutter/material.dart';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FaceBook(),
    );
  }
}



class FaceBook extends StatefulWidget {
  @override
  _FaceBookState createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> with SingleTickerProviderStateMixin{
  @override
  var myGlobalKey = GlobalKey<ScaffoldState>();

  double _sizeIcon(_context)=>MediaQuery.of(context).size.width /15 ;
  Color _colorIcon = Colors.black;
  Color _selected_colorIcon = Colors.black;
  static List <Color>List_AvatarColors=[Colors.yellow , Colors.red , Colors.blueGrey , Colors.purple , Colors.pink , Colors.deepOrange];
  List revers_ListColor = List_AvatarColors.reversed.toList();
  int indexColor =-1; // becouse he not make adiffrent between indexColor++ and ++indexColor
  List <String> names = ['Mohammed' ,'Ahmed' , 'Adel' ,'Fathy' ,'Nabil' ,'Eslam' ,'Abbas' ,'Abdullah' ,'Adnan' ,'Hssan', 'Ali' ,'Amir' ,'Anas' ,'Hammad' ,'Hamza' ,'Fahad' ,'Yahya' ,'Saleh'];
  int numOfliks = Random().nextInt(100)+1;
  int numOfComment = Random().nextInt(2000)+500;
  List <String> all_Images = [
    'https://multicoretechnologies.com/images/new/flutter-img.png',
    "https://images.pexels.com/photos/52608/pexels-photo-52608.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/936137/pexels-photo-936137.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/2681319/pexels-photo-2681319.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/422220/pexels-photo-422220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/235615/pexels-photo-235615.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/3371094/pexels-photo-3371094.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/269724/pexels-photo-269724.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/730547/pexels-photo-730547.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/2853664/pexels-photo-2853664.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/262780/pexels-photo-262780.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/908055/pexels-photo-908055.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/39571/gorilla-silverback-animal-silvery-grey-39571.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/41162/moon-landing-apollo-11-nasa-buzz-aldrin-41162.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/47367/full-moon-moon-bright-sky-47367.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/36704/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/845263/pexels-photo-845263.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/399187/pexels-photo-399187.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/2895295/pexels-photo-2895295.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/47343/the-ball-stadion-horn-corner-47343.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    "https://images.pexels.com/photos/40984/animal-ara-macao-beak-bird-40984.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260",
    "https://images.pexels.com/photos/590491/pexels-photo-590491.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/213399/pexels-photo-213399.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    "https://images.pexels.com/photos/3254036/pexels-photo-3254036.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  ];
  int indexImages =-1;

  List<String> captions = [
    "Exampel for Flutter Cross platform..",
    'Just keep making those baby steps every day. You think you are not moving but when you look back, you will realize how far you have come',
    'Life goes on, with or without you',
    '5’2 my height but my attitude 6’1',
    'Don’t Study me. You won’t Graduate!',
    'If you’re honestly happy, fuck what people think',
    'Being pissed off gets old. I’m just at a whole new ‘fuck it’ level',
    'her attitude savage but her heart is gold',
    'Own what’s yours, or else others will try to',
    'Life goes on, with or without you',
    'Sorry if I Looked interested, I’m not',
    'Don’t mistake my kindness for weakness',
    'You couldn’t handle me even if I came with instructions',
    'Forgive, yes. Forget, never',
    'There’s a hole in my heart where you use to be',
    'I don’t need any part-time people in my life',
    'Exhale the bullshit',
    'I got it from my mama',
    'Thick thighs and pretty eyes',
    'Let your aura reflect who you truly are',
    'We got that Friday feeling',
    'Catch flights, not Feelings',
    'Disappointed but not surprised',
    'How I feel when there is no Coffee',
    '50% Savage. 50% Sweetness',
  ];
  String postText = "Exampel for Flutter Cross platform..";

  List<String> all_storyImages = [
    "https://images.unsplash.com/photo-1519074069444-1ba4fff66d16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1574285934479-7575d72ed9c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1591017940761-68725ef7d016?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1589725616913-84c529c691f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1593604572546-bc62d40d80db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1593300360518-1abad36e7079?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1593300360783-cc1daa64ccd6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1588783948922-d2f155b13c89?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1593344484962-796055d4a3a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/reserve/LJIZlzHgQ7WPSh5KVTCB_Typewriter.jpg?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1542178432-52211bc52073?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1500099817043-86d46000d58f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1500462918059-b1a0cb512f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1546427863-3e5fab874be2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1561617428-14d50e4ee9cb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1515834089127-17497885e379?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1543351611-58f69d7c1781?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1507499739999-097706ad8914?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1458909760068-5a3e1baf59c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1513072064285-240f87fa81e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1519817650390-64a93db51149?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1561424797-7ec2cad5e623?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1451422450617-99d28523649e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1489549132488-d00b7eee80f1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  ];
  int index_storyImages = -1;


  var myTabController ;
  VoidCallback myonChanged ;
  int _currentIndex =0;
  @override
  void initState() {
    myTabController = TabController(length: 6  , initialIndex: _currentIndex, vsync: this);
    myonChanged =(){
      setState(() {
        _currentIndex = myTabController.index;
      });
    };
    myTabController.addListener(myonChanged);
    super.initState();
  }
  @override
  void dispose() {
    myTabController.removeListener(myonChanged);
    myTabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
                pinned: true,
                floating: true,

                //snap: true,
                //forceElevated: true,
                //primary: false,

                //titleSpacing: 0,    space from left to title
                //expandedHeight: 150,

                flexibleSpace:FlexibleSpaceBar(
                  background: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Text("facebook" , style: TextStyle(color: Color.fromRGBO(45, 136, 255, 1) , fontSize: MediaQuery.textScaleFactorOf(context)*30 , fontFamily: 'Roboto' , fontWeight: FontWeight.bold),),
                      ), //titlePadding: EdgeInsets.fromLTRB(20,20,0,50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(child: Icon(Icons.search , size: _sizeIcon(context) , color: Colors.black,) , radius: 20,backgroundColor: Colors.black12,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(child: Image.asset('images/Messenger.png',width: _sizeIcon(context)) , radius: 20 ,backgroundColor: Colors.black12),
                          )
                        ],
                      ),
                    ],
                  ),
                ),


                expandedHeight: _sizeIcon(context)*5,
                bottom: TabBar(
                  controller: myTabController,
                  tabs: <Widget>[
                    Tab(child: Icon(Icons.home,size:_sizeIcon(context) ,color: _colorIcon, )),
                    Tab(child: Image.asset('images/group_facebook.png' ,color: _colorIcon , width: _sizeIcon(context),)),
                    Tab(child: Image.asset('images/watch_facebook.png' ,color: _colorIcon, width: _sizeIcon(context),)),
                    Tab(child: Icon(Icons.account_circle ,color: _colorIcon, size:_sizeIcon(context) ,)),
                    Tab(child: Icon(Icons.notifications_none ,color: _colorIcon, size:_sizeIcon(context) , )),
                    Tab(child: Icon(Icons.menu ,color: _colorIcon , size:_sizeIcon(context) ,)),
                  ],
                ),
              ),
              myTabController.index == 0 ?
              _homePage()
                  : SliverFillRemaining(child: _tabsRow(),),
            ],
          )
      ),
    );
  }

  Divider _Divider ()=> Divider(thickness: MediaQuery.of(context).size.height/80,color: Colors.grey[400],) ;
  _homePage(){
    return SliverList(
      delegate:  SliverChildListDelegate.fixed(
          [
            Container(
              height: MediaQuery.of(context).size.width /6,
              child: _writePost(),
            ),
            Divider(thickness: 2,),
            Container(
              height: MediaQuery.of(context).size.height /15,
              child: _shortCutsAllElements(),
            ),
            _Divider(),
            Container(
              height: MediaQuery.of(context).size.height /12,
              child: _chatingRoom(),
            ),
            _Divider(),
            Container(
              height: MediaQuery.of(context).size.height /3.5,
              child: _storiesBar(),
            ),
            _ListOf_Posts(),
            _Divider(),
          ]
      ),
    );
  }

  _writePost(){
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10),
          child:_profile_image(),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FlatButton(
              onPressed: ()=>null,
              child: Text("What's on your mind?" ,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.black12)
              ),
            ),
          ),
        ),
      ],
    );
  }
  _shortCutsAllElements(){
    return Container(
      height: MediaQuery.of(context).size.height/15,
      child: Row(
        children: <Widget>[
          Expanded(child: _shortCutsElementsBar(ShCut_Text:"live" , icon:Icons.videocam , clr_Icon:Colors.red , function:null , keyFAB:'1'),),
          VerticalDivider(indent: 3,endIndent: 3,width: 1,),
          Expanded(child: _shortCutsElementsBar(ShCut_Text:"photo" , icon:Icons.photo_library , clr_Icon:Colors.green[400] , function:null , keyFAB:'2'),),
          VerticalDivider(indent: 3,endIndent: 3 ,width: 1,),
          Expanded(child:_shortCutsElementsBar(ShCut_Text:"team" , icon:Icons.video_call , clr_Icon:Colors.purple , function:null , keyFAB:'3'))
        ],
      ),
    );
  }



  _tabsRow(){
    return TabBarView(
      controller: myTabController,
      children: <Widget>[
        _homePage(),
        InkWell(child: Image.asset('images/group_facebook.png' ,color: _colorIcon , width: _sizeIcon(context),) , onTap:()=>print("group Page"),),
        InkWell(child: Image.asset('images/watch_facebook.png' ,color: _colorIcon, width: _sizeIcon(context),) , onTap:()=>print("watch Page"),),
        IconButton(icon: Icon(Icons.account_circle) ,color: _colorIcon, iconSize:_sizeIcon(context) ,onPressed: ()=>print("profile Page"),),
        IconButton(icon: Icon(Icons.notifications_none) ,color: _colorIcon, iconSize:_sizeIcon(context) , onPressed: ()=>print("notifications Page"),),
        IconButton(icon: Icon(Icons.menu) ,color: _colorIcon , iconSize:_sizeIcon(context) , onPressed: ()=>print("menu Page"),),
      ],
    );
  }



  _changeColorIndex() {
    indexColor++;
    if(indexColor > List_AvatarColors.length-1){indexColor = 0;}
  }
  _changeImagesIndex(){
    indexImages++;
    if(indexImages > all_Images.length-1){indexImages = 0;}
  }
  _change_StoryImagesIndex(){
    index_storyImages++;
    if(index_storyImages > all_storyImages.length-1){index_storyImages = 0;}
  }

  _profile_image(){
    return Container(
      width: MediaQuery.of(context).size.width /8,
      height: MediaQuery.of(context).size.width /8,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/MyProfileImage.jpg"),
              fit: BoxFit.cover
          ),
          shape: BoxShape.circle
      ),
    );
  }

  _shortCutsElementsBar({String ShCut_Text , icon , Color clr_Icon , Function function , keyFAB}){
    return FloatingActionButton.extended(
      hoverElevation: 0,
      highlightElevation: 0,
      heroTag: keyFAB,
      label: Text(ShCut_Text, style: TextStyle(color: Colors.black),),
      icon: Icon(icon , color: clr_Icon,size: _sizeIcon(context),),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      onPressed: ()=>function,
    );
  }

  _chatingRoom(){
    List <Widget> elements = [
      _makeRoomButton(),
    ];
    for(int i =0 ; i<30 ; i++){
      _changeColorIndex();
      elements.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: List_AvatarColors[indexColor],
            child: FlutterLogo(),
            radius: 20,
          ),
        ),
      );
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: elements,
      ),
    );
  }

  _makeRoomButton(){
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width *0.25,
      child: ButtonTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.blue)
        ),
        child: FlatButton(
          onPressed: ()=>null,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.video_call , size: _sizeIcon(context)+5, color: Colors.purple),
              ),
              Expanded(child: Text('Make aroom' , style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.025 , color: Colors.blue[800]),)),
            ],
          ),
        ),
      ),
    );
  }

  _storiesBar(){
    return Container(
      height: MediaQuery.of(context).size.height /3.5,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (build,index){
            _changeColorIndex();
            _change_StoryImagesIndex();
            return Stack(
              children: <Widget>[
                Container(
                  /*child: CachedNetworkImage(
                    imageUrl: all_storyImages[indexImages],
                    placeholder: (context , url)=> Image.asset("images/facebook_loading.gif"),
                  ),*/
                  margin: EdgeInsets.symmetric(horizontal: 5 , vertical: 5),
                  width: MediaQuery.of(context).size.width /3.70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(all_storyImages[index_storyImages])
                    ),
                    borderRadius: BorderRadius.circular(15) ,
                  ),
                ),
                Transform.translate(
                  offset: Offset(
                    ((MediaQuery.of(context).size.width /3.7) +5) /6,
                    ((MediaQuery.of(context).size.height /4)+5)/9,
                  ),
                  child: CircleAvatar(
                    child: FlutterLogo(),
                    backgroundColor: List_AvatarColors[indexColor],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Transform.translate(
                    offset: Offset( 15,-20),
                    child: Text(names[indexColor] , style: TextStyle(color: Colors.white),),
                  ),
                )
              ],
            );
          }),
    );
  }



  leadingPost(){
    _changeColorIndex();    ///must it inside loop
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        leading: CircleAvatar(child: FlutterLogo(),backgroundColor: List_AvatarColors[indexColor],),
        title: Text("${names[indexColor]} ${names.reversed.toList()[indexColor]}"),
        trailing: Icon(Icons.more_horiz),
      ),
    );
  }
  _trailingPost(_likes , _comments){
    return ListTile(
      leading: Image.asset('images/reactsOnFB.png' , width: 60,),
      title: Text("${_likes.toString()}K"),
      trailing: Text("${_comments.toString()} Comments"),
    );
  }
  _reactsBar(){
    return Container(
      height: MediaQuery.of(context).size.height /18,
      child: Row(
        children: <Widget>[
          Divider(indent: 5,endIndent: 5,thickness: 2,),
          Expanded(child: Image.asset('images/like.png' ),),
          VerticalDivider(),
          Expanded(child: Image.asset('images/comment.png', width: 22,height: 22,),),
          VerticalDivider(),
          Expanded(child: Image.asset('images/share.png', width: 25,height: 25,),),
        ],
      ),
    );
  }

  _post(_likes , _comments){
    return Column(
      children: <Widget>[
        _Divider(),
        leadingPost(),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Align(alignment: Alignment.centerLeft ,child: Text(captions[indexImages])),
        ),
        Container(
          //height: MediaQuery.of(context).size.height *0.35,
          width: MediaQuery.of(context).size.width ,
          child:  CachedNetworkImage(
            imageUrl: all_Images[indexImages],
            placeholder: (context, url) => Image.asset('images/facebook_loading.gif',),
            errorWidget: (context, url , error) => Icon(Icons.error_outline , color: Colors.red,size: 50,),
          ),
        ),
        _trailingPost(_likes , _comments),
        _reactsBar(),
      ],
    );
  }






  Widget _ListOf_Posts(){
    List <Widget> x =[];
    for(int i=0 ; i<all_Images.length ; i++){
      _changeImagesIndex();
      numOfliks = Random().nextInt(100)+1;
      numOfComment = Random().nextInt(2000)+500;
      x.add(_post(numOfliks , numOfComment));
    }
    return Column(children: x,) ;
  }

/*_ListOf_Posts(){
    return Container(
      height: MediaQuery.of(context).size.height *0.65 *25,
      child: ListView.builder(
          itemCount: all_Images.length,
          controller: ScrollController(),
          itemBuilder: (build,index){
            _changeImagesIndex();
            numOfliks = Random().nextInt(100)+1;
            numOfComment = Random().nextInt(2000)+500;
            return _post(numOfliks , numOfComment);
          }
      ),
    );
  }*/











}
