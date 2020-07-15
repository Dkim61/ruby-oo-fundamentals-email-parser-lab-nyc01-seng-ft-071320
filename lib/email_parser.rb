# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    def initialize(emails)
      @emails= emails
    end
    attr_accessor :emails
    def parse
        new_array = @emails.split (" ")
        final_array = []
         new_array.each do |element|
            if element[-1] != ","
                final_array.push(element)
            else
                modified_element = element.slice(0, element.length - 1)
                final_array.push(modified_element)
            end
        end
        final_array.uniq
    end
end