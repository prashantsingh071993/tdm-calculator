import React from "react";
import PropTypes from "prop-types";
import { createUseStyles } from "react-jss";

const useStyles = createUseStyles({
  root: {
    title: {
      textAlign: "center"
    },
    value: {
      fontSize: "2em",
      flexBasis: "50%"
    }
  }
});

const ResultView = props => {
  const classes = useStyles();
  const { rule } = props;

  return (
    <React.Fragment>
      <div className="tdm-calculation-metrics-panel">
        <div>
          <span className={classes.value}>{rule.value}</span>
          <span>{rule.units}</span>
        </div>
        <h3 className={classes.title}>{rule.name}</h3>
      </div>
    </React.Fragment>
  );
};
ResultView.propTypes = {
  rule: PropTypes.shape({
    name: PropTypes.string,
    value: PropTypes.any,
    units: PropTypes.string
  })
};

export default ResultView;
