require 'diary'
require 'diary_entry'
require 'todo'
require 'contacts'

RSpec.describe 'integration' do
  context 'adding and returning diary entries' do
    it 'adds an entry into the diary' do
      diary = Diary.new
      entry = DiaryEntry.new("title", "content")
      diary.add(entry)
      expect(diary.all_entries).to eq [entry]
    end

    it 'returns all diary entries' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "content_1")
      entry_2 = DiaryEntry.new("title_2", "content_2")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.all_entries).to eq [entry_1, entry_2]
    end
  end

  context 'it counts words' do
    it 'counts words in a single entry' do
      diary = Diary.new
      entry = DiaryEntry.new("title", "content is king")
      diary.add(entry)
      expect(diary.count_words).to eq 3
    end

    it 'counts words in all entries' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "Content is king")
      entry_2 = DiaryEntry.new("title_2", "and you know it")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.count_words).to eq 7
    end
  end

  context 'selecting diary entries based on parameters' do
    it 'returns an entry closest to the time provided' do
      diary = Diary.new
      entry_1 = DiaryEntry.new("title_1", "Content is king and you know it")
      entry_2 = DiaryEntry.new("title_2", "and you know it")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.select_entry(2, 2)).to eq [entry_2]
    end
  end

  context 'extracting a phone number from a piece of content' do
    it 'pulls and saves it in an array' do
      diary = Diary.new
      entry = DiaryEntry.new("title_1", "Content is king and you know it 07801297306")
      diary.add(entry)
      expect(diary.contact_list).to eq "07801297306"
    end
  end

end