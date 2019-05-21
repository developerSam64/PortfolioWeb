import 'package:flutter_web/material.dart';
import 'package:myportfolio/responsive_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.white,
//        appBar: AppBar(
//          centerTitle: true,
//          title: Text(
//            "My Portfolio",
//            style: TextStyle(
//                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
//          ),
//          backgroundColor: Colors.black87,
//          leading: Icon(Icons.arrow_back_ios),
//        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                elevation: 2,
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: <Widget>[
                    Container(
                      height: ResponsiveWidget.isSmallScreen(context)
                          ? MediaQuery.of(context).size.height * 0.3
                          : MediaQuery.of(context).size.width * 0.2,
                      width: ResponsiveWidget.isSmallScreen(context)
                          ? MediaQuery.of(context).size.height * 0.3
                          : MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        backgroundBlendMode: BlendMode.luminosity,
                        color: Colors.black26,
//            borderRadius: BorderRadius.circular(40),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("sumit.jpg"),
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Resume",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Contact",
                        style: TextStyle(color: Colors.white70),
                      ),
                    )
                  ],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  NavHeader(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Column(
                    children: <Widget>[
                      ProfileInfo(),
                      Align(
                        alignment: Alignment.center,
                        child: RaisedButton(
                          shape: StadiumBorder(),
                          child: Text("Resume"),
                          color: Colors.green,
                          onPressed: () {},
                          padding: EdgeInsets.all(10),
                        ),
                      ),
                      OutlineButton(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                        shape: StadiumBorder(),
                        child: Text(
                          "Say Hi!",
                          style: TextStyle(color: Colors.green),
                        ),
                        color: Colors.tealAccent,
                        onPressed: () {},
                        padding: EdgeInsets.all(10),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
//          Spacer(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline,
                      color: Colors.black87),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Projects",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline,
                      color: Colors.black87),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Videos",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline,
                      color: Colors.black87),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "About",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline,
                      color: Colors.black87),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Work",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline,
                      color: Colors.black87),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Contact",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      decoration: TextDecoration.underline,
                      color: Colors.black87),
                ),
                SizedBox(
                  width: 10,
                ),
//                NavButton(
//                  text: "Work",
//                  onPressed: () {},
//                ),
//                NavButton(
//                  text: "Contact",
//                  onPressed: () {},
//                ),
              ],
            ),
          SizedBox(
            width: 50,
          ),
          PKDot(),
        ],
      ),
    );
  }
}

class PKDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Sumit Kumar",
          textScaleFactor: 2,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.2
            : MediaQuery.of(context).size.width * 0.2,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.2
            : MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.black26,
//            borderRadius: BorderRadius.circular(40),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("sumit.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
//      Text(
//        "Hey! My name is",
//        textScaleFactor: 2,
//        style: TextStyle(color: Colors.white),
//      ),
      Text(
        "SUMIT\nKUMAR",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "An Android Developer Expert for Flutter, Dart & Native Android.\n"
        "If working environment is great then i can deliver pixel perfect applications.\n ",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.black45),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
//          RaisedButton(
//            shape: StadiumBorder(),
//            child: Text("Resume"),
//            color: Colors.green,
//            onPressed: () {},
//            padding: EdgeInsets.all(10),
//          ),
//          SizedBox(
//            width: 20,
//          ),
//          OutlineButton(
//            borderSide: BorderSide(
//              color: Colors.green,
//            ),
//            shape: StadiumBorder(),
//            child: Text("Say Hi!"),
//            color: Colors.tealAccent,
//            onPressed: () {},
//            padding: EdgeInsets.all(10),
//          )
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileData, profileImage(context)],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                shape: StadiumBorder(),
                child: Text(
                  "Github",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                splashColor: Colors.white70,
                elevation: 2,
                onPressed: () {},
                color: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton(
                color: Colors.white,
                shape: StadiumBorder(),
                child: Text(
                  "Gmail",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                splashColor: Colors.blueAccent,
                elevation: 2,
                onPressed: () {},
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton(
                shape: StadiumBorder(),
                child: Text(
                  "Facebook",
                  style: TextStyle(fontSize: 15),
                ),
                splashColor: Colors.white,
                elevation: 2,
                onPressed: () {},
                color: Colors.blue,
              ),
            ],
          ),
//          Text(
//            "Sumit Kumar ©2019",
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              color: Colors.grey,
//            ),
//          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            child: Text("Github"),
            onPressed: () {},
            color: Colors.blue,
          ),
          RaisedButton(
            child: Text("Twitter", style: TextStyle(color: Colors.blue),),
            onPressed: () {},
            color: Colors.white,
          ),
          RaisedButton(
            child: Text("Facebook"),
            onPressed: () {},
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Sumit Kumar ©2019",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
