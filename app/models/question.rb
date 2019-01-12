class Question
  include Algorithms

  attr_accessor :id, :content, :answer

  def initialize(id)
    @id = id
    @answer = answer
  end

  def answer
    case id
    when 'question1'
      "sorting array asc: #{sort_asc_array_by_bubble_algorithm}, desc: #{sort_desc_array_by_bubble_algorithm}"
    when 'question2'
      "common elements two arrays: #{common_elements_two_arrays}"
    when 'question3'
      "first non repeating character: #{first_non_repeating_character_in_string}"
    when 'question4'
      "asc: #{count_and_sort_times_an_element_appear_in_string(sort: 'asc')},
      \n desc: #{count_and_sort_times_an_element_appear_in_string(sort: 'desc')}"
    when 'question5'
      "Rails app already log informations in the log file & show in console log \
       You mean that I get the log file in server then send to a specific email?
       I ignored the question since don't get the requirement. Sorry"
    else
      "we have not answered your question yet"
    end
  end
end