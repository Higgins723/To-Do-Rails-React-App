# spec/models/todo_spec.rb
require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Todo, type: :model do
  # ensure the todo model has a 1 to many relationship with item model
  it { should have_many(:items).dependent(:destroy) }
  # esure the column titles and create_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end