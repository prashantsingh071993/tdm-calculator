class CalculationWPage {
  open(projectId) {
    browser.url("http://localhost:3000/calculation" + projectId);
  }

  get title() {
    return browser.getTitle();
  }

  get buttonForward() {
    return browser.$(".tdm-wizard-nav-button:nth-child(2)");
  }

  getInput(name) {
    return browser.$("input[name='" + name + "']");
  }

  getSelect(name) {
    return browser.$("select[name='" + name + "']");
  }

  fillProject(project) {
    // project
    Object.entries(project).map(([key, value]) => {
      this.getInput(key).waitForEnabled();
      this.getInput(key).setValue(value);
    });
    // check next page
  }

  fillLandUse(landUse) {
    // land use
    Object.entries(landUse).map(([key, value]) => {
      this.getInput(key).waitForEnabled();
      this.getInput(key).click();
    });
  }

  fillInput(input) {
    // input
    Object.entries(input).map(([key, value]) => {
      this.getInput(key).waitForEnabled();
      this.getInput(key).setValue(value);
    });
  }

  fillParking(parking) {
    // parking
    Object.entries(parking).map(([key, value]) => {
      this.getInput(key).waitForEnabled();
      this.getInput(key).setValue(value);
    });
    // check project level and target TDM Points
  }

  fillStrategies(strategies) {
    // strategy
    Object.entries(strategies.check).map(([key, value]) => {
      this.getInput(key).waitForEnabled();
      this.getInput(key).click();
    });
    Object.entries(strategies.select).map(([key, value]) => {
      this.getSelect(key).waitForEnabled();
      this.getSelect(key).selectByVisibleText(value);
    });
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
