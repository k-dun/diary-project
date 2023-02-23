class Diary
  def initialize
    @diary_entries = []
    @numbers = []
    @contact_list = []
  end

  def add(entry)
    @diary_entries << entry
  end

  def all_entries
    return @diary_entries
  end

  def count_words
    return @diary_entries.map { |entry| entry.count_words }.reduce(:+)
  end

  def select_entry(wpm, minutes)
    words_can_read = wpm * minutes
    entry_lengths_meeting_criteria = []

    @diary_entries.each do |entry| 
      entry_lengths_meeting_criteria << entry.count_words if entry.count_words <= words_can_read
    end

    closest_entry_length = entry_lengths_meeting_criteria[-1]
    return @diary_entries.select { |entry| closest_entry_length == entry.count_words }
  end

  def contact_list
    contact_list = []
    @diary_entries.each { |entry| contact_list << entry.pull_numbers_from_entry }
    return contact_list.join
  end
end