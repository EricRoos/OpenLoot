module Types
  class ItemStatAttributes < Types::BaseInputObject
    argument :name, String, "Name of the item stat", required: false
    argument :id, ID, "Id of the item stat you want to modify", required: false
    argument :_destroy, String, "Whether or not to delete the record", required: false
  end
end
