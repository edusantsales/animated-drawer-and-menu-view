import 'package:flutter/material.dart';

class MenuView extends StatefulWidget {
  final String userName;
  final String userEmail;
  final Color themeColor;
  final IconData itemIcon1;
  final String itemText1;
  final VoidCallback onPressedItem1;
  final IconData itemIcon2;
  final String itemText2;
  final VoidCallback onPressedItem2;
  final IconData itemIcon3;
  final String itemText3;
  final VoidCallback onPressedItem3;
  final IconData itemIcon4;
  final String itemText4;
  final VoidCallback onPressedItem4;
  final IconData itemIcon5;
  final String itemText5;
  final VoidCallback onPressedItem5;
  final IconData iconLogout;
  final String textLogout;
  final VoidCallback onPressedLogout;

  const MenuView({
    @required this.userName,
    @required this.userEmail,
    this.themeColor,
    this.itemIcon1,
    this.itemText1,
    this.onPressedItem1,
    this.itemIcon2,
    this.itemText2,
    this.onPressedItem2,
    this.itemIcon3,
    this.itemText3,
    this.onPressedItem3,
    this.itemIcon4,
    this.itemText4,
    this.onPressedItem4,
    this.itemIcon5,
    this.itemText5,
    this.onPressedItem5,
    this.iconLogout,
    this.textLogout,
    this.onPressedLogout,
  });

  @override
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        color: widget.themeColor,
        width: size.width,
        height: size.height,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.075,
                  ),
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 7,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: constraints.maxHeight * 0.075,
                            ),
                            child: Text(
                              widget.userName,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: constraints.smallest.width * 0.05,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              widget.userEmail,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: constraints.smallest.width * 0.034,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.02,
                  ),
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 1.321,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton.icon(
                        icon: Icon(
                          widget.itemIcon1,
                          size: constraints.maxWidth * 0.08,
                        ),
                        textColor: Colors.white,
                        label: Text(
                          widget.itemText1 ?? "",
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.05,
                          ),
                        ),
                        onPressed: widget.onPressedItem1,
                      ),
                      FlatButton.icon(
                        icon: Icon(
                          widget.itemIcon2,
                          size: constraints.maxWidth * 0.08,
                        ),
                        textColor: Colors.white,
                        label: Text(
                          widget.itemText2 ?? "",
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.05,
                          ),
                        ),
                        onPressed: widget.onPressedItem2,
                      ),
                      FlatButton.icon(
                        icon: Icon(
                          widget.itemIcon3,
                          size: constraints.maxWidth * 0.08,
                        ),
                        textColor: Colors.white,
                        label: Text(
                          widget.itemText3 ?? "",
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.05,
                          ),
                        ),
                        onPressed: widget.onPressedItem3,
                      ),
                      FlatButton.icon(
                        icon: Icon(
                          widget.itemIcon4,
                          size: constraints.maxWidth * 0.08,
                        ),
                        textColor: Colors.white,
                        label: Text(
                          widget.itemText4 ?? "",
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.05,
                          ),
                        ),
                        onPressed: widget.onPressedItem4,
                      ),
                      FlatButton.icon(
                        icon: Icon(
                          widget.itemIcon5,
                          size: constraints.maxWidth * 0.08,
                        ),
                        textColor: Colors.white,
                        label: Text(
                          widget.itemText5 ?? "",
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.05,
                          ),
                        ),
                        onPressed: widget.onPressedItem5,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.02,
                  ),
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 10,
                  child: FlatButton.icon(
                    icon: Icon(
                      widget.iconLogout,
                      size: constraints.maxWidth * 0.08,
                    ),
                    textColor: Colors.white,
                    label: Text(
                      widget.textLogout ?? "",
                      style: TextStyle(
                        fontSize: constraints.maxWidth * 0.05,
                      ),
                    ),
                    onPressed: widget.onPressedLogout,
                  ),
                ),
              ],
            );
          },
        ));
  }
}
