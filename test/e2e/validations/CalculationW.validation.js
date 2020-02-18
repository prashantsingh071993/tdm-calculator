import { assert } from "chai";
import { calculationWPage } from "../pages/CalculationW.page";

class CalculationWValidation {
  checkTitle() {
    assert.strictEqual(calculationWPage.title, "TDM");
  }
}

export const calculationWValidation = new CalculationWValidation();
