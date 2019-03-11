# require modules here
require 'yaml'
require 'pry'

def load_library(path)
  # code goes here
  emojis = YAML.load_file(path)
  emojis_hash = {["get_emoticon"] = {},emojis_hash["get_meaning"]  = {}}
  
    emojis.each do |meaning, emotes|
    emojis_hash["get_emoticon"][emotes[0]] = emotes[1] 
    emojis_hash["get_meaning"][emotes[1]] = meaning
    end
  emojis_hash
end

def get_japanese_emoticon(path, emote)
  # code goes here
  emojis = load_library(path)
  emoji = "Sorry, that emoticon was not found"
    emojis["get_emoticon"].each do |eng_emote, jp_emote|
      if eng_emote == emote 
        emoji = jp_emote
      end
    end
  emoji
end

def get_english_meaning(path,emote)
  # code goes here
  emojis = load_library(path)
  emoji_meaning = "Sorry, that emoticon was not found"
  
  emojis["get_meaning"]. each do |emojika, meaning|
    if emojika == emote
      emoji_meaning = meaning.to_s
    end
  end
  
  emoji_meaning

      
end