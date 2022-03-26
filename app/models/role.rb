class Role < ActiveRecord::Base
    has_many :auditions
    def actors 
      self.auditions.map do |aud|
        audition.actor
      end
    end

    def locations
        self.auditions.map do |aud|
            audition.location
        end
    end


    def lead
        self.auditions.find_by(hired: true) || "no actor has been hired for this role"
    end

    def understudy
        newArr = self.auditions.where(hired: true).second || "no actor has been hired for understudy for this role"
    end


    # def lead
    #     if hired, return first instance, otherwise return "no actor has been hired for this role"
    # end
    # def understudy
    #     if hired.count > 1 return second instance, otherwise return "no actor has been hired for understudy for this role"
    # end
  end