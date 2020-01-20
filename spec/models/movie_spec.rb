require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'typing attributes' do
    movie = FactoryBot.create(:movie)
    expect(movie.title).to be_a(String)
    expect(movie.year).to be_a(Date)
  end
end
