# frozen_string_literal: true

class CreateUser
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def call
    @user = User.create(@params)

    if @user.valid?
      return  
    end
  end
end

