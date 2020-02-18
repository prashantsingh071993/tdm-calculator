class CalculationWPage {
  open(projectId) {
    browser.url("http://localhost:3000/calculation" + projectId);
  }

  get title() {
    return browser.getTitle();
  }

  get inputProjectName() {
    return browser.$("input[name='PROJECT_NAME']");
  }

  fillProject(project) {
    // project
    this.inputProjectName.waitForEnabled();
    this.inputProjectName.setValue("Barrington Condo");
    //this.inputAddress.waitForEnabled();
    //this.inputAddress.setValue(project.address);
    //this.inputDescription.waitForEnabled();
    //this.inputDescription.setValue(project.description);
    // check next page
  }

  fillDevelopmentType(project) {
    // land use
    // loop
    this.selectCheckbox(project.type).check();
  }

  fillProjectSpecs(project) {
    // input
    // loop
    this.selectInput(project.spec.inputName)
      .waitForEnabled()
      .setValue(project.spec.inputValue);
  }

  fillParkingSpaces(project) {
    // parking
    this.selectInput("Parking Provided")
      .waitForEnabled()
      .setValue(project.parkingValue);
    // check project level and target TDM Points
  }

  fillTDMStrategies(project) {
    // strategy
    // loop
    this.selectCheckbox(project.tdmStrategy).check();
    this.selectSelection(project.tdmStrategy).select(
      project.tdmStrategySelection
    );
    // check earned points
  }

  // check calculation summary
  // review

  forward() {
    this.buttonForward.waitForEnabled();
    this.buttonForward.click();
  }
}

export const calculationWPage = new CalculationWPage();
