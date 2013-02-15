require "spec_helper"

describe Barista do

  subject(:barista) { Barista.new }

  describe "#get_cup_of" do

    before do
      Frother.stub(:froth_it_up).and_return("frothy milk")
    end

    subject(:cup_of_something) { barista.get_cup_of(drink_order) }
    let(:drink_order) { DrinkOrder.new(:drink_type => drink_type) }

    context "when it is a tall latte" do

      let(:drink_type) { "latte" }

      it 'returns a cup of latte' do
        cup_of_something.should == "latte"
      end

      it 'must use frother API' do
        Frother.should_receive(:froth).with("milk").once
        cup_of_something
      end
    end

    context "when it is a mocha" do

      let(:drink_type) { "mocha" }

      it 'returns a cup of mocha' do
        cup_of_something.should == "mocha"
      end

      it 'must use frother API' do
        Frother.should_receive(:froth).with("milk").once
        cup_of_something
      end
    end

    context "when it is an espresso" do

      let(:drink_type) { "espresso" }

      it 'must not use frother API' do
        Frother.should_receive(:froth).never
        subject
      end
    end

  end

  context ".validations" do

    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:years_of_experience) }
    it { should validate_numericality_of(:years_of_experience) }

  end

end