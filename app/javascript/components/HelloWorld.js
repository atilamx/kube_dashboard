import React from "react"
import PropTypes from "prop-types"
import 'jest-enzyme';
import {mount, shallow} from 'enzyme'

class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};

export default HelloWorld