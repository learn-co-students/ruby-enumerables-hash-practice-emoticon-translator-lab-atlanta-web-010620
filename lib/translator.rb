# require modules here
require 'yaml'

def load_library(path)
  emoticons = YAML.load_file(path)
  
  
new_hash = {}
new_hash[:get_meaning] = {}
new_hash[:get_emoticon] = {}
emoticons.each do |key,val|
    english_key = val[0]
    japanese_key = val[1] 
    if japanese_key != nil 
        new_hash[:get_meaning][japanese_key] = key
        new_hash[:get_emoticon][english_key] = japanese_key
    end
  end
  return new_hash
end


def get_japanese_emoticon(yaml_path,emoticon) 
  array = load_library(yaml_path) 
  statement = "Sorry, that emoticon was not found"
  array[:get_emoticon].each do |emo,value|
    if emo == emoticon 
      statement = value 
    end
    
  end
  return statement
end

def get_english_meaning(yaml_path,emoticon)
  array = load_library(yaml_path) 
  statement = "Sorry, that emoticon was not found"
  array[:get_meaning].each do |emo,value|
    if emo == emoticon 
      statement = value 
    end
    
  end
  return statement
end