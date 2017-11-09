class Wrapper

  SPLIT_CHARS = [" ", "-", "\t"]

  def self.wrap(str, width)
    words = self.explode(str)
    current_length = 0
    ret = ""

    words.each do |word|
      if current_length + word.length > width  
        
        if current_length > 0
          ret << "\n"
          current_length = 0
        end

        while word.length > width
          ret << word[0..width - 1] + "-"
          word = word[width - 1..-1]
          ret << "\n"
        end

        word = word.lstrip()
      end

      ret << word
      current_length += word.length
    end

    ret
  end

  private
    def self.explode(string)
      curr_idx = 0
      parts = []

      while true
        substr = string[curr_idx..-1]       
        index = self.index_of_any(substr)   

        break parts << substr if index == nil   

        word = string[curr_idx..curr_idx + index]

        parts << word

        curr_idx += index + 1
      end
    end

    def self.index_of_any(string)
      SPLIT_CHARS.each do |char| 
        return string.index(char) unless string.index(char) == nil
      end

      return nil
    end
end
