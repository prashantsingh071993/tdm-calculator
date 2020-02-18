class HomePage {
  open() {
    browser.url("http://localhost:3000");
  }

  get title() {
    return browser.getTitle();
  }
}

export const homePage = new HomePage();
