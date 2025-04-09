# frozen_string_literal: true

require 'spec_helper'
require './app/usecases/orders/create'
require './app/usecases/users/create'
require './app/model/order'

RSpec.describe Orders::Create do
  context 'with new order' do
    let(:user) { Users::Create.new(params: { name: 'John' }).call }
    let(:params) { { value: 200, user_id: user.id } }
    let(:create_order) { described_class.new(params:) }

    it { expect(create_order.call.class).to be(OrderRepository) }
    it { expect(create_order.call.user_id).to be(user.id) }
  end
end
