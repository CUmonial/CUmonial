class AddUserTypes < ActiveRecord::Migration
  def up
    user_types = [{:name=>"internal",:description=>"Internal user to CUmonial"},{:name=>"university",:description=>"user representing univeristy or college (external)"},{:name=>"company",:description=>"user representing company (external)"},{:name=>"third party",:description=>"third party vendor"},{:name=>"others",:description=>"others"}]
  	user_types.each do |user_type|
	  	if !UserType.exists?(:name=>user_type[:name])
		  	UserType.create(user_type)
	  	end
	 end
  end

  def down
  	UserType.delete_all
  end
end
