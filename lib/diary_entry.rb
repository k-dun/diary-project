class DiaryEntry
  def initialize(title, content)
    @title = title
    @content = content
    @contact_list = []
  end

  def count_words
    return @content.split(" ").size
  end

  def pull_numbers_from_entry
    @content.scan(/\b\d{11}\b/).each { |number| @contact_list << number if !(@contact_list.include?(number)) }
    return @contact_list
  end
end