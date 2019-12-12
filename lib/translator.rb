# require modules here
require "yaml"

def load_library(path)
  # code goes here
  library = YAML.load_file(path)
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |meaning, emote|
    result["get_meaning"][emote[1]] = meaning
    result["get_emoticon"][emote[0]] = emote[1]
  end
  #print result
  result
end

def get_japanese_emoticon(path, eng_emote)
  # code goes here
  library = load_library(path)
  if library["get_emoticon"][eng_emote]
    result = library["get_emoticon"][eng_emote]
  else
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(path, jap_emote)
  # code goes here
  library = load_library(path)
  if library["get_meaning"][jap_emote]
    result = library["get_meaning"][jap_emote]
  else
    result = "Sorry, that emoticon was not found"
  end
  result
end