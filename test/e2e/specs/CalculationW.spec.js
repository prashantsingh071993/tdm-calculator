import { calculationWPage } from "../pages/CalculationW.page";
import { calculationWValidation } from "../validations/CalculationW.validation";
import { context } from "../../data/Context";

describe("Authentication page.", () => {
  before(() => {
    calculationWPage.open("?pageNo=1&view=w");
  });

  it("Displays correct title", () => {
    calculationWValidation.checkTitle();
  });

  it.only("Fills project rules", () => {
    for (let project of context.projects) {
      calculationWPage.fillProject(project.project);
      calculationWPage.forward();
      calculationWPage.fillLandUse(project.landUse);
      calculationWPage.forward();
      calculationWPage.fillInputs(project.inputs);
      calculationWPage.forward();
      calculationWPage.fillParking(project.parking);
      // check project level and target TDM Points
      calculationWPage.forward();
      calculationWPage.fillStrategies(project.strategies);
      // check earned points
      calculationWPage.forward();
      // check calculation summary
      // review
    }
  });
});
