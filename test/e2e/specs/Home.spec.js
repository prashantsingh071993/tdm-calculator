import { expect } from "chai";
import { homePage } from "../pages/Home.page";
import { homeValidation } from "../validations/Home.validation";
const assert = require("assert");

describe("Authentication page.", () => {
  before(() => {
    homePage.open();
  });

  it.only("Displays correct title", () => {
    homeValidation.checkTitle();
  });
});
