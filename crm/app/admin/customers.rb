ActiveAdmin.register Customer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :FullName, :PhoneNumber, :EmailAddress, :Notes, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:FullName, :PhoneNumber, :EmailAddress, :Notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #

  form title: 'New Customer' do |f|
    inputs 'Details' do
      input :FullName
      input :PhoneNumber
      input :EmailAddress
      input :Notes
      input :image, :as => :file
    end
    actions do
      action :submit, :as => :button
    end
  end



  filter :has_one_attached

end
