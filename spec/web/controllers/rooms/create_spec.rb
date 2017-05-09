require 'spec_helper'
require_relative '../../../../apps/web/controllers/rooms/create'

describe Web::Controllers::Rooms::Create do
  let(:action) { Web::Controllers::Rooms::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
