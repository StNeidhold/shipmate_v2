ActiveAdmin.register WriteUp do

 permit_params :breakout_statement_text, :heading_opening1, :heading_opening2, :breakout_statement_format_id, :heading_opening, :heading_opening_format_id, :heading_second_opening, :body_format_id, :bullet_one, :bullet_two, :bullet_format_id, :bullet_three, :bullet_4, :closing, :eval_id

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
