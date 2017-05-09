require 'spec_helper'
require_relative '../../../../apps/web/controllers/rooms/show'

describe Web::Controllers::Rooms::Show do
  let(:action) { Web::Controllers::Rooms::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
