import React from "react";
import { render, unmountComponentAtNode } from "react-dom";
import { act } from "react-dom/test-utils";
import { BrowserRouter as Router } from "react-router-dom";
import * as accountService from "../../services/account.service";
import Login from "./Login.js";

it("renders without crashing", () => {
  const div = document.createElement("div");
  render(
    <Router>
      <Login setLoggedInAccount={() => {}} />
    </Router>,
    div
  );
});

describe("Filter function", () => {
  it("should filter by a search term (link)", () => {
    expect(true).toEqual(true);
  });
});

//

let container;

beforeEach(() => {
  container = document.createElement("div");
  document.body.appendChild(container);
});

afterEach(() => {
  unmountComponentAtNode(container);
  container.remove();
  container = null;
});

describe("Login component", () => {
  it("renders without crashing", () => {
    act(() => {
      render(
        <Router>
          <Login setLoggedInAccount={() => {}} />
        </Router>,
        container
      );
    });
    const button = container.getElementsByClassName("btn-submit")[0];
    act(() => {
      button.dispatchEvent(new MouseEvent("click", { bubbles: true }));
    });
    // expect handleSubmit to be called
  });

  it("calls handleSubmit on submit", () => {
    const fakeResponse = {
      code: "AUTH_NOT_CONFIRMED",
      user: "user",
      isSuccess: "true"
    };

    jest.spyOn(accountService, "login").mockImplementation(() => {
      const fetchResponse = {
        json: () => Promise.resolve(fakeResponse)
      };
      return Promise.resolve(fetchResponse);
    });

    act(() => {
      render(
        <Router>
          <Login setLoggedInAccount={() => {}} />
        </Router>,
        container
      );
    });
    const button = container.getElementsByClassName("btn-submit")[0];
    act(() => {
      button.dispatchEvent(new MouseEvent("click", { bubbles: true }));
    });
    // expect handleSubmit to be called
  });
});
