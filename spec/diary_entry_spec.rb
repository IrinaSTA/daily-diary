require 'diary_entry'

describe DiaryEntry do
  it 'has a title' do
    diary_entry = DiaryEntry.new("First day at Makers")
    expect(diary_entry.title).to eq("First day at Makers")
  end
end
