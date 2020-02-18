import { expect } from "chai";

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
    expect(el.getValue()).to.equal(value);
  }

  check(name, value) {
    const el = browser.$("input[name='" + name + "']");
    el.waitForEnabled();
    el.click();
    expect(el.getValue()).to.equal(value);
  }

  select(name, value) {
    const el = browser.$("select[name='" + name + "']");
    el.waitForEnabled();
    el.selectByVisibleText(value);
    expect(el.$("option=" + value).isSelected()).to.equal(true);
  }

  fillProject(project) {
    Object.entries(project).map(([key, value]) => {
      this.input(key, value);
    });
  }

  fillLandUse(landUse) {
    Object.entries(landUse).map(([key, value]) => {
      this.check(key, value);
    });
  }

  fillInputs(inputs) {
    Object.entries(inputs).map(([key, value]) => {
      this.input(key, value);
    });
  }

  fillParking(parking) {
    Object.entries(parking).map(([key, value]) => {
      this.input(key, value);
    });
  }

  fillStrategies(strategies) {
    Object.entries(strategies.check).map(([key, value]) => {
      this.check(key, value);
    });
    Object.entries(strategies.select).map(([key, value]) => {
      this.select(key, value);
    });
  }

  forward() {
    this.buttonForward.waitForEnabled();
    this.buttonForward.click();
  }
}

export const calculationWPage = new CalculationWPage();
