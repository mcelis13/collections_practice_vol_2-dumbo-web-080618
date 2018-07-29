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
  keys = []
  values = []
  count = 0

  arrayOfObjs.each do |obj|
    obj.each do |key, value|
      if values.include?(value) == false
        keys << key
        values << value
        count = 1
        newArrayOfObjects << {key => value, :count => count}
      elsif values.include?(value) == true
        count += 1
        newArrayOfObjects.each do |new_obj|
          new_obj[:count] = count
        end
      end
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
mergedObj = {}
arrayOfMergedObjs = []

  keys.each do |obj|
    obj.each do |first_name_key, name_value|
       data.each do |dataObj|
         dataObj.each do |name_stored, anotherObj|
           if name_stored == name_value
              mergedObj = obj.merge(anotherObj)
           end
         end#dataObj.each
       end #data.each
     end#obj.each
     arrayOfMergedObjs << mergedObj
   end #keys each
   
   arrayOfMergedObjs
end#func

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
