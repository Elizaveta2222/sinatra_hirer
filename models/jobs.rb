require './lib/task/db'

class Job < Sequel::Model
    many_to_one  :company

    def to_api
    {
        id: id,
        name: name,
        place: place,
        company_id: company_id
    }
    end

    # dataset_module do # Model scope's OR self.
    def self.by_name(name)
        res = []
        res = where(name: /#{name}/i) if name
        puts "In by_name dataset mod: res = #{res.inspect}"
        # res.empty? ? [].to_json : collection_to_api(res)
        res.empty? ? [] : res
    end
    # end
       
end

