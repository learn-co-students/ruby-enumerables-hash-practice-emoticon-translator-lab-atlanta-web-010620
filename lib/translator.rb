require "yaml"
require 'pry'

def load_library(file)
  new_hash = {}
  new_hash[:get_meaning] = {}
  new_hash[:get_emoticon] = {}
  emoticons = YAML.load_file(file)
  emoticons.each do |key, value|
    new_hash[:get_meaning][value[1]] = key
    new_hash[:get_emoticon][value[0]] = value[1]
     
   # new_hash = {}
  #new_hash[:get_meaning] = {}
end
return new_hash
end

def get_japanese_emoticon(file, emoticon)
 emoticons = load_library(file)
 if emoticons[:get_emoticon][emoticon]
  return emoticons[:get_emoticon][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, emoticon)
 emoticons = load_library(file)
 if emoticons[:get_meaning][emoticon]
  return emoticons[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end