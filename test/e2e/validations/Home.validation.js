import { assert } from "chai";
import { homePage } from "../pages/Home.page";

class HomeValidation {
  checkTitle() {
    assert.strictEqual(homePage.title, "TDM");
  }
}

export const homeValidation = new HomeValidation();
