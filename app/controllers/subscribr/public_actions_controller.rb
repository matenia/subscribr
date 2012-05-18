module Subscribr
  class PublicActionsController < ApplicationController
    layout 'subscribr/application'
    def register
      @subscription = Subscription.new
    end
    
    def submit_registration
      render :text => params.inspect
    end
    
    def thanks
    end

  end
end
