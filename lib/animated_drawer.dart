import 'package:flutter/material.dart';

class AnimatedDrawer extends StatefulWidget {
  final Widget menuContainer;
  final Widget viewContainer;
  final Color themeColor;
  final IconData icon1;
  final VoidCallback onPressedIcon1;
  final IconData icon2;
  final VoidCallback onPressedIcon2;

  const AnimatedDrawer({
    @required this.menuContainer,
    @required this.viewContainer,
    @required this.icon1,
    @required this.onPressedIcon1,
    @required this.icon2,
    @required this.onPressedIcon2,
    this.themeColor,
  });

  @override
  _AnimatedDrawerState createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawer> {
  var _xOffset = 0.0;
  var _yOffset = 0.0;
  var _scaleFactor = 1.0;
  var _isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          widget.menuContainer,
          GestureDetector(
            onTap: () {
              setState(() {
                _xOffset = 0;
                _yOffset = 0;
                _scaleFactor = 1;
                _isDrawerOpen = false;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius: _isDrawerOpen
                    ? BorderRadius.circular(24.0)
                    : BorderRadius.zero,
                color: Colors.transparent,
              ),
              curve: Curves.decelerate,
              duration: Duration(milliseconds: 300),
              transform: Matrix4.translationValues(_xOffset, _yOffset, 0)
                ..scale(_scaleFactor),
              width: size.width,
              height: size.height,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: _isDrawerOpen
                              ? BorderRadius.circular(24.0)
                              : BorderRadius.zero,
                          color: Colors.white,
                        ),
                        width: constraints.maxWidth,
                        height: constraints.maxHeight / 1.091,
                        child: Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.only(top: 24.0),
                          child: widget.viewContainer,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: _isDrawerOpen
                              ? BorderRadius.only(
                                  bottomLeft: Radius.circular(24.0),
                                )
                              : BorderRadius.zero,
                          color: widget.themeColor,
                        ),
                        width: constraints.maxWidth,
                        height: constraints.minHeight / 12,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: constraints.maxWidth * 0.15,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Material(
                                    borderRadius: BorderRadius.circular(32.0),
                                    clipBehavior: Clip.hardEdge,
                                    color: Colors.transparent,
                                    child: IconButton(
                                      icon: Icon(
                                        widget.icon1,
                                        color: Colors.white,
                                      ),
                                      iconSize: constraints.maxWidth * 0.1,
                                      onPressed: widget.onPressedIcon1,
                                    ),
                                  ),
                                  RaisedButton(
                                    color: Colors.white,
                                    elevation: 4,
                                    shape: CircleBorder(),
                                    onPressed: () {
                                      setState(() {
                                        _xOffset = constraints.maxWidth * 0.7;
                                        _yOffset = constraints.maxHeight * 0.17;
                                        _scaleFactor = 0.7;
                                        _isDrawerOpen = true;
                                      });
                                    },
                                    child: Center(
                                      child: Icon(
                                        Icons.menu,
                                        size: constraints.maxHeight * 0.06,
                                        color: widget.themeColor,
                                      ),
                                    ),
                                  ),
                                  Material(
                                    borderRadius: BorderRadius.circular(32.0),
                                    clipBehavior: Clip.hardEdge,
                                    color: Colors.transparent,
                                    child: IconButton(
                                      icon: Icon(
                                        widget.icon2,
                                        color: Colors.white,
                                      ),
                                      iconSize: constraints.maxWidth * 0.1,
                                      onPressed: widget.onPressedIcon2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
