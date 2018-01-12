class User < ActiveRecord::Base

  attr_accessor :role

  acts_as_authentic do |c|
    c.login_field = "login"
  end


  acts_as_authorization_subject :association_name => :roles, :join_table_name => :roles_users
  after_save :define_role

  def role
    @role
    if self.has_role? :administrator
      @role = :administrator
    elsif self.has_role? :supervisor
      @role = :supervisor
    else self.has_role? :user
      @role = :user
    end
  end

  def define_role
    if @role
      self.has_no_roles!
      self.has_role! @role
    end
  end

end
