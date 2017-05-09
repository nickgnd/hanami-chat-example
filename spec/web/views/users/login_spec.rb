require 'spec_helper'
require_relative '../../../../apps/web/views/users/login'

describe Web::Views::Users::Login do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/users/login.html.slim') }
  let(:view)      { Web::Views::Users::Login.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
