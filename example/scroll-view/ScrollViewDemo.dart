//Sample Code: ScrollView

#import('package:rikulo/client/app/app.dart');
#import('package:rikulo/client/view/view.dart');
#import('package:rikulo/client/html/html.dart');

class ScrollViewDemo extends Activity {

  void onCreate_() {
    title = "ScrollView Demo";

    final ScrollView view = new ScrollView();
    view.profile.text = "location: center center; width: 80%; height: 80%";
    view.classes.add("scroll-view");

    for (int x = 0; x < 30; ++x) {
      for (int y = 0; y < 30; ++y) {
        View child = new View();
        final String color = CSS.color(250 - x * 4, 250 - y * 4, 200);
        child.style.cssText = "border: 1px solid #553; background-color: $color";
        child.left = x * 50 + 2;
        child.top = y * 50 + 2;
        child.width = child.height = 46;
        view.addChild(child);
      }
    }

    mainView.addChild(view);
  }
}

void main() {
  new ScrollViewDemo().run();
}
