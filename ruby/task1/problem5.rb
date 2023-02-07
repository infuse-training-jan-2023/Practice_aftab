require 'json'
def read_json(date_path)
  json = File.read(date_path)
  obj = JSON.parse(json)
  name = obj["name"].split
  f_name = name[0]
  l_name = name[1]
  obj.delete("name")
  obj["first name"]=f_name
  obj["last name"]=l_name
  date = Time.now.utc.to_i
  file_name = save_the_file(date,obj)
  return file_name
end
def save_the_file(date,obj)
  file_name = "aftab_#{date}.json"
  File.open(file_name,"w") do |f|
    f.write(obj.to_json)
    return file_name
  end
end
puts read_json("C:\\Users\\Aftab\\Desktop\\ruby\\date-16-exercise\\data.json")

