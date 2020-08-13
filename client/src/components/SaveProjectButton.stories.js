import React from "react";
import { storiesOf } from "@storybook/react";
import SaveProjectButton from "./SaveProjectButton";
import { action } from "@storybook/addon-actions";

export const actions = {
  onClick: action("onClick")
};

storiesOf("SaveProjectButton", module).add("default", () => (
  <SaveProjectButton {...actions}>Save Project Button Label</SaveProjectButton>
));
