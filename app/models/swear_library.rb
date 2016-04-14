class SwearLibrary < ActiveRecord::Base
    # User types words (string) into a text field (comment, message, email, etc) on a web browser
    # In order for this check to take place, the user must submit the string they've typed (submit comment or message, send email, etc)
    # The submitted string could be a single word or many paragraphs
    # This method must identify the single word as a swear or parse through each word to identify a swear
    # If a swear is found, the swear(s) will be pushed to an array
    # If no swear is found, the return will be nil
    # (A hash could be made with the current user ID as the key and the value being the swear array)
    # This array (or hash) is what will be returned from this method
    # That array (or hash) will be passed to the swear_logs controller action
    # That controller action will loop through the array (or hash)
    # A swear_log
  def self.swear_check(user_swear)
    swear_arr = []
    final_swear = []

    SwearLibrary.all.each do |lib|
     swear_arr << lib.swear
    end
    swear_arr.each do |swear|
      final_swear << user_swear.scan(/#{swear}/)
    end
    final_swear.delete_if {|x| x == [] }
  end
end
