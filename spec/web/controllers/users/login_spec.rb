require 'spec_helper'
require_relative '../../../../apps/web/controllers/users/login'

describe Web::Controllers::Users::Login do
  let(:action) { Web::Controllers::Users::Login.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
