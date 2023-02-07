
require 'Base64'
def encode(file_path)
   file = File.open(file_path, "r")
   arr = file.readlines.map(&:chomp)
   file.close
   for i in arr
      if i.include? "the string that will be base encoded"
         encoded_txt = Base64.encode64(i)
         file_new = File.new("date-16-exercise\\new_file.txt","w")
         file_new.write(encoded_txt.to_s)
         file_new.close
         break
      end
   end
   return encoded_txt
end
# file_path = "date-16-exercise\\file.txt"
# encode(file_path)



