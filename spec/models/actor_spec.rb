require 'rails_helper'

RSpec.describe Actor, type: :model do
  it 'typing attributes' do
    actor = FactoryBot.create(:actor)
    expect(actor.name).to be_a(String)
  end
end
