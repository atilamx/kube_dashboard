require 'integration/spec_helper'

describe 'test' do
  describe 'on Page OrderSet Detail' do
    context "when state in order submitted" do
      it 'first test' do
        visit("/")
        message = find('div', text: 'landing page').text
        
        expect(message).to eq "landing page"
      end
    end
  end
end
