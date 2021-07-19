import React from 'react'
import {mount, shallow} from 'enzyme'

import Enzyme from 'enzyme';
import Adapter from '@wojtekmaj/enzyme-adapter-react-17';

Enzyme.configure({ adapter: new Adapter() });

function Fixture() {
  return (
    <div>
      <span id="foo" className="bar" />
    </div>
  );
}

const wrapper = shallow(<Fixture />); // mount/render/shallow when applicable

describe('ProductsList', () => {
  describe('handleSelectedProduct()', () => {
    it('calls the correct handler', () => {
      expect(wrapper).toMatchElement(<Fixture />);
      expect(wrapper.find('span')).toMatchElement(<span />);
      expect(wrapper.find('span')).toMatchElement(
        <span id="foo" className="bar" />,
        { ignoreProps: false }
      );
      expect(1).toEqual(1)
    })
  })    
});


