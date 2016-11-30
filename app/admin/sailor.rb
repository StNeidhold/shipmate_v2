ActiveAdmin.register Sailor do

 permit_params :first_name, :last_name, :middle_name, :division, :command, :rank, :rating, :position, :collateral_duty_1, :collateral_duty_2, :collateral_duty_3, :primary_responsibility

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
