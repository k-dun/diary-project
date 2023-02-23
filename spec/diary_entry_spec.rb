require 'diary_entry'

RSpec.describe DiaryEntry do
  it 'initiates' do
    diary = DiaryEntry.new("title", "content")
  end
end