require 'pry'

def begins_with_r(array)
  array.each { |element|
    if element[0] != 'r'
      return false
    end
  }

  return true
end

def contain_a(array)
  newArray = []

  array.each { |element|
   if element.split('').include?('a')
     newArray.push(element)
   end
  }

  return newArray
end

def first_wa(array)
  array.find do |element|
    element.to_s.include?('wa')
  end
end

def remove_non_strings(array)
  array.reject { |element| element.class != String}
end

def count_elements(arrayOfObjs)
  newArrayOfObjects = []

  arrayOfObjs.each do |obj|
    obj.each do |key, value|
      if newArrayOfObjects.include?(value) == false #this will alway be false because this is
        #asking if the array has the value but the array actually houses an obj so we need to access whether
        #the object inside of the array has the value!!
        newArrayOfObjects.push({ key => value, :count => 0}) #necessary to create a obj inside of newArray
      end # end of if statement
    end # end of obj.each
  end # end of arrayOfObj

  newArrayOfObjects
end

def find_cool(arrayOfObjs)
  newArray = []
  arrayOfObjs.each { |obj|
      if obj[:temperature] == 'cool'
        newArray.push(obj)
      end
  }

  newArray
end

def merge_data(keys, data)
 keys.each { |obj| puts obj.keys}
end

def organize_schools(hash)
  organized_schools_obj = {}

  hash.each do |key, value|
    value.each do |locationKey, value|
      if !(organized_schools_obj.has_key?(value))
        organized_schools_obj[value] = [key]
      else
        organized_schools_obj[value] << key
      end
    end # end of value
  end # end of hash

  organized_schools_obj
end # end of func
