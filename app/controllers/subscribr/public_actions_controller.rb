module Subscribr
  class PublicActionsController < ApplicationController
    layout 'subscribr/application'
    def register
      @subscription = Subscription.new
    end
    
    def submit_registration
      @subscription = Subscription.new(params[:subscription])
      if @subscription.save!
        render :action => 'thanks'
      else
        render :action => 'register'
      end
    end
    
    def thanks
    end

  end
end
