class AddUserTypes < ActiveRecord::Migration
  def up
    user_types = [{:name=>"internal",:description=>"Internal user to CUmonial"},{:name=>"university",:description=>"user representing univeristy or college (external)"},{:name=>"company",:description=>"user representing company (external)"},{:name=>"third party",:description=>"third party vendor"},{:name=>"others",:description=>"others"}]
	     type = nil
    user_types.each do |user_type|
    	if !UserType.exists?(:name=>user_type[:name])
		  	type = UserType.create(user_type)
	  	end
      if ["university","company"].include?(user_type[:name])
          UserCategory.create(:name=>"Trial",:description=>"Free user or temp user",:user_type_id=>type.id)
          UserCategory.create(:name=>"Premium",:description=>"paid user, has taken subscription",:user_type_id=>type.id)
      end
	 end
  end

  def down
  	UserType.delete_all
    UserCategory.delete_all
  end
end
