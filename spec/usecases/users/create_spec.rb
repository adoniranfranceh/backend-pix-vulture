# frozen_string_literal: true

require 'spec_helper'
require './app/usecases/users/create'
require './app/model/user'

RSpec.describe Users::Create do
  context 'with new user' do
    let(:params) { { name: 'John' } }
    let(:create_user) { described_class.new(params:) }

    it { expect(create_user.call.class).to be(UserRepository) }
  end
end
