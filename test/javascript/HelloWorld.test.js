import React from 'react'
import {mount, shallow} from 'enzyme'

import Enzyme from 'enzyme';
import Adapter from '@wojtekmaj/enzyme-adapter-react-17';
import PropTypes from "prop-types"

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

Enzyme.configure({ adapter: new Adapter() });

const wrapper = shallow(<HelloWorld />); // mount/render/shallow when applicable

describe('HellowWorld', () => {
  describe('TEST', () => {
    it('Renders HelloWorld ', () => {
      expect(wrapper).toMatchElement(<HelloWorld />);    
      //expect(wrapper.find('span')).toMatchElement(<span />);   
    })
  })    
});



