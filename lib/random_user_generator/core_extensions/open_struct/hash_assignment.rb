module CoreExtensions
  module OpenStruct
    module HashAssignment
      def []=(name, value)
        modifiable[new_ostruct_member(name)] = value
      end
    end
  end
end

# In Ruby 1.9.3 OpenStruct#[]= doesn't exist
unless OpenStruct.public_instance_methods.include?(:[]=)
  OpenStruct.send(:include, CoreExtensions::OpenStruct::HashAssignment)
end
