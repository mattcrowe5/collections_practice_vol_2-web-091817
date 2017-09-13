require 'pry'

def begins_with_r(array)
  newArr = []
  array.each do |word|
    if word.chars.first == 'r' || word.chars.first == 'R'
      newArr << true
    else
      newArr << false
    end
  end
  if newArr.include?(false)
    return false
  else
    return true
  end
end

def contain_a(array)
  withA = []

  array.each do |word|
    withA << word if word.chars.include?('a') || word.chars.include?('A')
  end

  withA
end

def first_wa(array)
  array.find do |word|

    word.to_s.chars.first(2) == ['w', 'a']
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
  array
end

def count_elements (arr)
  hash = arr.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    arr.each do |hash2|
      if hash2[:name] == name
        hash[:count] += 1
      end
    end
  end
hash.uniq
end

def merge_data (keys, data)
  arr = []
  keys.each do |index|
    first = index[:first_name]
    data.each do |info|
      if info[first]
        arr << index.merge!(info[first])
      end
    end
  end
end

def find_cool(array)
  arr = []
  array.each do |index|
    if index[:temperature] == "cool"
      arr << index
    end
  end
  arr
end

def organize_schools(schools)
  org = {}
  schools.each do |school, location|
    location.each do |key, value|
      if !org.has_key?(value)
        org[value] = [school]
      elsif org.has_key?(value)
        org[value].push(school)
      end
    end
  end
  org
end
