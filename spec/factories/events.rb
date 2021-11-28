FactoryBot.define do
  factory :event do
    sequence(:title) { |n| "Тестовое событие #{n}" }

    description { "Мероприятие мирового уровня" }

    sequence(:location) { |n| "ул. Торфорезов #{n} " }

    starttime { "#{Time.now}" }

    endtime { "#{Time.now}" }

    sequence(:organizermail) { |n| "someguy_#{n}@something.com" }

    sequence(:organizertelegram) { |n| "tgname#{n}" }

    sequence(:link) { |n| "https://example#{n}.example" }
  end
end
