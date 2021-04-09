import '../Animations/Common.dart';

import '../Animations/AnimationOpacity.dart';
import '../Animations/AnimatedContainer.dart';
import '../Animations/RenderAnimation.dart';
import '../Animations/Animated­Widget.dart';
import '../Animations/MonitoringProgress.dart';
import '../Animations/AnimatedBuilder.dart';
import '../Animations/Staggered.dart';

List<LearnAnimation> animations = [
  LearnAnimation('AnimationOpacity', AnimationOpacityScreen()),
  LearnAnimation('AnimatedContainer', AnimatedContainerScreen()),
  LearnAnimation('RenderAnimation', RenderAnimationScreen()),
  LearnAnimation('Animated­Widget', AnimationWidgetScree()),
  LearnAnimation('MonitoringProgress', MonitoringProgressScreen()),
  LearnAnimation('AnimatedBuilder', AnimatedBuilderScreen()),
  LearnAnimation('Staggered', StaggeredScreen()),
];
