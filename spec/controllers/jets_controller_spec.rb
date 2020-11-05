require 'rails_helper'

RSpec.describe JetsController, type: :controller do
    describe "#create" do
        it "should not create an instance of Jet without the right parameters" do
            jet = Jet.create
            
            expect(jet.save).to eq(false)
        end
    end
end
