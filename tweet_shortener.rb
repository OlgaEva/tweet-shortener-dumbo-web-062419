require 'pry'

def dictionary # Write your code here.
  dictionary_hash = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
new_array = []
string.split(" ").each do |word|
    if dictionary.keys.include?(word.downcase)
      new_array << word = dictionary[word.downcase]
    else
      new_array << word
    end
  end
  new_array.join(" ")
end


def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
    end
  end

def shortened_tweet_truncator(tweet)
  new_tweet = []
  word_substituter(tweet)
    if tweet.size > 140
      new_tweet = tweet.chomp([138..-1]) + "..."

    end
  end
