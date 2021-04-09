import 'package:flutter/material.dart';
import './Animations/Common.dart';
import './data/metaData.dart' as metaData;

void main() {
  runApp(LearnAnimationsApp());
}

class LearnAnimationsApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LearnAnimationsAppState();
}

class _LearnAnimationsAppState extends State<LearnAnimationsApp> {
  LearnAnimation _selectedAnimation;

  List<LearnAnimation> animations = metaData.animations;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Full animations App',
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey('animationsListPage'),
            child: WidgetListScreen(animations, _handleWidgetTapped),
          ),
          if (_selectedAnimation != null)
            animationsDetailsPage(_selectedAnimation)
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }

          // Update the list of pages by setting _selectedWidget to null
          setState(() {
            _selectedAnimation = null;
          });

          return true;
        },
      ),
    );
  }

  void _handleWidgetTapped(LearnAnimation animation) {
    setState(() {
      _selectedAnimation = animation;
    });
  }
}

class animationsDetailsPage extends Page {
  final LearnAnimation animation;

  animationsDetailsPage(this.animation) : super(key: ValueKey(animation));

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        animation.pageObj.context = context;
        return animation.pageObj;
      },
    );
  }
}

class WidgetListScreen extends StatelessWidget {
  final List<LearnAnimation> animations;
  final ValueChanged<LearnAnimation> onTapped;

  WidgetListScreen(this.animations, this.onTapped);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full animations'),
      ),
      body: ListView(
        children: [
          for (var widget in animations)
            ListTile(
              title: Text(widget.name),
              onTap: () => onTapped(widget),
            )
        ],
      ),
    );
  }
}
