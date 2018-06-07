require 'rails_helper'

RSpec.describe Task, type: :model do
  
  it "has a valid factory" do
    expect(build(:homework)).to be_valid
  end

  it 'is valid with required attributes' do
    task = create(:email)
    expect(task).to be_valid
  end

  it 'is invalid without name' do
    task = build(:task, name: nil)
    expect(task).not_to be_valid
  end

  it 'is invalid without priority' do
    task = build(:task, priority: nil)
    expect(task).not_to be_valid
  end

  it 'is invalid without Due Date'

  it 'belongs to User'
end
