class Validator < ActiveModel::Validator
  def validate(connection)
    students = 0
    teachers = 0;
    sub = Subscription.find(connection.subscription_id)
    connections = UserSubscribtionConnection.all
    if sub.price < 10
    	 connections.all.each do |record|
    	 	if record.subscription_id == connection.subscription_id && record.role == "Student"    	 		
    	 		students+=1
    	 	else 
    	 		teachers+=1
    	 	end
    	 end
    	 if connection.role == "Student"
    	 	students +=1;
    	 else 
    	 	teachers+=1;
    	 end
    	 if students > 10 || teachers > 2 
    	 	 connection.errors[:base] << "You cant do that "
    	 end   
    end
  end
end

class UserSubscribtionConnection < ApplicationRecord
	belongs_to :user
	belongs_to :subscription
	validates_with Validator 
end
