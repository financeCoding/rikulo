#import('package:rikulo/client/app/app.dart');
#import('package:rikulo/client/view/view.dart');
#import('package:rikulo/client/service/gapis/gapis.dart');
#import('package:rikulo/client/util/util.dart');

class TestGLoader extends Activity {

  void onCreate_() {
    GLoader.loadIPLatLng((double lat, double lng) {
        printc("lat: ${lat}, lng: ${lng}");
    });
    GLoader.load(GLoader.FEED, "1", {"callback": ()=>printc("Feed loaded")});
  }
}

void main() {
  new TestGLoader().run();
}
