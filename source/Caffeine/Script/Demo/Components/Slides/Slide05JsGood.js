let Caf = require("caffeine-script-runtime");
Caf.defMod(module, () => {
  let ArtSuite = require("art-suite"), Component, Element, Math;
  ({ Component, Element, Math } = Caf.import(["Component", "Element", "Math"], [
    ArtSuite,
    global
  ]));
  return Slide05JsGood = Caf.defClass(
    class Slide05JsGood extends Component {},
    function(Slide05JsGood, classSuper, instanceSuper) {
      this.prototype.render = function() {
        let FunButton = require("../FunButton"), Slide = require("../Slide");
        return Element(
          { childrenLayout: "row", padding: { v: 100 } },
          FunButton({
            source: "assets/HeartDiagram.jpg",
            angle: 0 - Math.PI / 4
          }),
          Slide({
            title: "JavaScript's Golden Heart",
            body: "first class functions\nprototype OO\ndynamic typing\ngarbage collection"
          })
        );
      };
    }
  );
});
