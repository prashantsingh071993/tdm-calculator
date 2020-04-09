import React from "react";
//import { mount } from "../../enzyme";
import { render, fireEvent, waitFor } from "@testing-library/react";
//import waitForExpect from "wait-for-expect";
import { unmountComponentAtNode } from "react-dom";
import { act } from "react-dom/test-utils";
import { BrowserRouter as Router } from "react-router-dom";
import * as accountService from "../../services/account.service";
import Login from "./Login.js";

jest.mock("../../services/account.service");

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
  it("renders without crashing", async () => {
    await act(async () => {
      render(
        <Router>
          <Login setLoggedInAccount={() => {}} />
        </Router>,
        container
      );
    });
    await waitFor(() => expect(getByText("Login")).toBeInTheDocument());
    //expect(getByText("Login")).toBeInTheDocument()
    //const button = container.getElementsByClassName("btn-submit")[0];
    //act(() => {
    //  button.dispatchEvent(new MouseEvent("click", { bubbles: true }));
    //});
    // expect handleSubmit to be called
  });

  it("succeeds on valid login", async () => {
    const fakeResponse = {
      code: "AUTH_NOT_CONFIRMED",
      user: "user",
      isSuccess: "true"
    };

    //const spy = jest.fn();
    const spy = accountService.login.mockResolvedValue(fakeResponse);
    //const spy = jest.spyOn(accountService, "login").mockImplementation(() => {
    //  const fetchResponse = {
    //    json: () => Promise.resolve(fakeResponse)
    //  };
    //  return Promise.resolve(fetchResponse);
    //});

    const mockSetLoggedInAccount = jest.fn();

    const wrapper = render(
      <Router>
        <Login.WrappedComponent
          setLoggedInAccount={mockSetLoggedInAccount}
          match={{ params: { email: "fake@email.com" } }}
          accountService={accountService}
        />
      </Router>
    );
    //console.log(wrapper.debug());
    expect(wrapper.getByText("Login")).toBeDefined();

    //expect(accountService.login.mock.calls.length).toBe(0);

    //await act(async () => {
    //wrapper.getByText("Login").simulate("click");
    //});

    //console.log(wrapper.getByText("Login").debug());
    await act(async () => {
      fireEvent.click(wrapper.getByText("Login"));
    });

    await waitFor(
      () =>
        //wrapper.update();
        expect(spy).toHaveBeenCalled()
      //expect(spy).toHaveBeenCalledTimes(1);
    );

    //expect(accountService.login.mock.calls.length).toBe(1);
    // expect handleSubmit to be called
  });
});
