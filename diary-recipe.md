1. 

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. 

class Diary
  def initialize
    #
  end

  def add(diary_entry) # diary_entry being an instance of DiaryEntry
    # adds a diary entry to the diary
    # returns nothing
  end

  def all_entries
    # returns all the diary entries
  end

  def select_entry(wpm, minutes) # wpm and minutes are integers
    # returns appropriate diary entry based on those parameters
  end

end

def DiaryEntry
  def initialize(title, content) # title and content are strings
    #
  end

  def count_words(content) # content is a string
    # returns an integer of how many words there are in the entry
  end

  def pull_numbers_from_content(entry)
    # parses through content to extract phone numbers
  end

  def contact_list
    # returns a contact list with numbers all stored in an array of arrays
  end

end

class Todo
  def initialize
  end

  def add(task) # task is a strong
    # adds the task to a list
  end

  def all_tasks
    # return all tasks
  end
end

class Contacts
  def pull_numbers_from_content(entry)
    # parses through content to extract phone numbers
  end

  def contact_list
    # returns a contact list with numbers all stored in an array of arrays
  end
end

3. 
# 1 Adds an entry
diary = Diary.new
diary_entry_1 = DiaryEntry.new("title 1", "content 1")
diary.add(diary_entry_1) # => nil

# 2 Returns a diary entry
diary = Diary.new
diary_entry_1 = DiaryEntry.new("title 1", "content 1")
diary.add(diary_entry_1)
diary.all # => [diary_entry_1]

# 3 Returns both diary entries
diary = Diary.new
diary_entry_1 = DiaryEntry.new("title 1", "content 1")
diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.all # => [diary_entry_1, diary_entry_2]

# 4 Returns the number of words in a diary entry
diary = Diary.new
diary_entry_1 = DiaryEntry.new("my title 1", "my contents 1 is the best")
diary.add(diary_entry_1)
diary.count_words # => 6


# 5 Returns an instance of diary entry representing the entry that is closest
# to, but not over, the length that the user could read in the minutes they
# have available given their reading speed.
diary = Diary.new
diary_entry_1 = DiaryEntry.new("my title 1", "my contents my contents my contents")
diary_entry_2 = DiaryEntry.new("my title 2", "my contents")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.find_best_entry_for_reading_time(4, 1) # => diary_entry_1