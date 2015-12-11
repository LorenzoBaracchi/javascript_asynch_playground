require 'spec_helper'
require_relative '../../lib/computator.rb'

RSpec.describe Computator do

  it 'should solve a simple addition' do
    c = Computator.new()
    expect(c.solve('1+2')).to eq 3

    expect(c.solve('11+2')).to eq 13
  end

  it 'should solve a simple subtraciton' do
    c = Computator.new()

    expect(c.solve('20-5')).to eq 15
  end

  it 'should solve multiple operations' do
    c = Computator.new()

    expect(c.solve('20-5+3')).to eq 18
  end

end
