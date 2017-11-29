# frozen_string_literal: true
FactoryBot.define do
  factory :book do
    read_groups ['public']
    to_create do |instance|
      Valkyrie.config.metadata_adapter.persister.save(resource: instance)
    end
  end
end
