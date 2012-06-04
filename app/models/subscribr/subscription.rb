module Subscribr
  class Subscription < ActiveRecord::Base
    attr_accessible :email, :name, :status
    validates_presence_of :status, :default => 'pending'
    validates :email, :email_format => true
    before_validation :set_status

    
    class << self
      def statuses
        ['pending','active','removed']
      end
      
      Subscription.statuses.each do |s|
        class_eval do
          define_method("#{s}_subscriptions") do
            where(:status => s)
          end
        end
      end
      
    end

    private
    
    def set_status
      self.status ||= 'pending'
    end
    
    # def email_format_validator(object, attribute, value)
    #   unless value =~ /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
    #     object.errors.add(attribute, :email_format, options)
    #   end
    # end

  end
end
