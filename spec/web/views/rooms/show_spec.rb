require 'spec_helper'
require_relative '../../../../apps/web/views/rooms/show'

describe Web::Views::Rooms::Show do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/rooms/show.html.slim') }
  let(:view)      { Web::Views::Rooms::Show.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    skip 'This is an auto-generated test. Edit it and add your own tests.'

    # Example
    view.foo.must_equal exposures.fetch(:foo)
  end
end
