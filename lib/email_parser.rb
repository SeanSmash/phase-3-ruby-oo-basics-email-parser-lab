# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :emails_string

    def initialize(emails_string)
        @emails_string = emails_string
    end

    def parse
        emails_array = []
        pp @emails_string
        emails_string.split(/(\b\w+@\w+\.com)/).uniq.map do |i|
            if i.include?(".com")
                emails_array << i 
            end
        end
        emails_array
    end
end