import { assert } from "chai";
import { expect } from "chai";
import { calculationWPage } from "../pages/CalculationW.page";

class CalculationWValidation {
  checkTitle() {
    assert.strictEqual(calculationWPage.title, "TDM");
  }

  checkParking(parking) {
    Object.entries(parking.validate).map(([key, value]) => {
      expect(
        browser.$("div[name='" + key + "'] + div + div").getText()
      ).to.equal(value);
    });
  }

  checkStrategies(strategies) {
    Object.entries(strategies.validate).map(([key, value]) => {
      expect(
        browser
          .$("h3=" + key)
          .$("../div")
          .getText()
      ).to.equal(value);
    });
  }
}

export const calculationWValidation = new CalculationWValidation();
