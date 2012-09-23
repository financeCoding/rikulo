//Sample Code: Test Log

#import('package:rikulo/client/app/app.dart');
#import('package:rikulo/client/view/view.dart');
#import('package:rikulo/client/html/html.dart');

class TestBodyScrollbar extends Activity {

  void onCreate_() {
    View view = new View();
    view.style.backgroundColor = "blue";
    view.width = 300;
    view.height = 250;
    view.left = browser.size.width - 180;
    view.top = browser.size.height - 180;
    mainView.addChild(view);
    mainView.addChild(new TextView("You shall see the scrollbar shown"));
  }
}

void main() {
  new TestBodyScrollbar().run();
}
