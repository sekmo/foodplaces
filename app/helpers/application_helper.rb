module ApplicationHelper
  def error_messages_for(object)
    render(partial: 'shared/error_messages', locals: {object: object})
  end

  def link_to_add_dish(f)
    new_object = f.object.dishes.build
    fields = capture do
      f.fields_for(:dishes, new_object, :child_index => "new_dishes") do |dish_fields|
        render "dish_fields", f: dish_fields
      end
    end
    link_to "Add dish", "javascript:void(0)", id: "add-dish-link", "data-fields": fields
  end
end
