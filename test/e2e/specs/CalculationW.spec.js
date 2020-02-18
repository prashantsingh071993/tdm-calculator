import { calculationWPage } from "../pages/CalculationW.page";
import { calculationWValidation } from "../validations/CalculationW.validation";
import { context } from "../../data/Context";

describe.only("Authentication page.", () => {
  before(() => {
    calculationWPage.open("?pageNo=1&view=w");
  });

  it("Displays correct title", () => {
    calculationWValidation.checkTitle();
  });

  it("Fills project rules", () => {
    calculationWPage.fillProject(context.projects.projects[0].project);
  });
});
