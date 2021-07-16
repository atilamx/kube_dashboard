require 'rails_helper'

RSpec.describe Pod, type: :model do
  describe '.create' do 
    context 'when record has a name and a ip address' do     
      it "creates a new record" do         
        expect {
          Pod.create(ip: Faker::Internet.ip_v4_address, name: Faker::Name.name)
        }.not_to raise_error
      end      
    end

    context 'when record is missing or name or ip address' do
      it 'raises an error' do         
        pod = Pod.create(ip: "aasa")
        expect(pod.errors.any?).to be true
        expect(pod.errors.class).to be ActiveModel::Errors
        expect(pod.errors.messages[:name]).to eq ["can't be blank"]
      end      
    end
  end   
end
