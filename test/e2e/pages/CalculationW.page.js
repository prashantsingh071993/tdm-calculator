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

  input(name, value) {
    const el = browser.$("input[name='" + name + "']");
    el.waitForEnabled();
    el.setValue(value);
  }

  check(name) {
    const el = browser.$("input[name='" + name + "']");
    el.waitForEnabled();
    el.click();
  }

  select(name, value) {
    const el = browser.$("select[name='" + name + "']");
    el.waitForEnabled();
    el.selectByVisibleText(value);
  }

  fillProject(project) {
    // project
    Object.entries(project).map(([key, value]) => {
      this.input(key, value);
    });
    // check next page
  }

  fillLandUse(landUse) {
    // land use
    Object.entries(landUse).map(([key, value]) => {
      this.check(key);
    });
  }

  fillInput(input) {
    // input
    Object.entries(input).map(([key, value]) => {
      this.input(key, value);
    });
  }

  fillParking(parking) {
    // parking
    Object.entries(parking).map(([key, value]) => {
      this.input(key, value);
    });
    // check project level and target TDM Points
  }

  fillStrategies(strategies) {
    // strategy
    Object.entries(strategies.check).map(([key, value]) => {
      this.check(key);
    });
    Object.entries(strategies.select).map(([key, value]) => {
      this.select(key, value);
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
