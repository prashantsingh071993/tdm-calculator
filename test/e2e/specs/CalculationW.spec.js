import { expect } from "chai";
import { calculationWPage } from "../pages/CalculationW.page";
import { calculationWValidation } from "../validations/CalculationW.validation";
const assert = require("assert");

describe.only("Authentication page.", () => {
  before(() => {
    calculationWPage.open("?pageNo=1&view=w");
  });

  it("Displays correct title", () => {
    calculationWValidation.checkTitle();
  });

  it("Fills project rules", () => {
    calculationWPage.fillProject(null);
  });
});
