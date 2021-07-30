import React from 'react'
import {mount, shallow} from 'enzyme'

import Enzyme from 'enzyme';
import Adapter from '@wojtekmaj/enzyme-adapter-react-17';

import App from 'App';

Enzyme.configure({ adapter: new Adapter() });

const wrapper = shallow(<App />); // mount/render/shallow when applicable

describe('App', () => {
  describe('TEST', () => {
    it('Renders the App', () => {
      expect(wrapper).toMatchElement(<App />);
    })
  })    
});
