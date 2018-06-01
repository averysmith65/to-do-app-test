FactoryBot.define do
  factory :task do
    name "buy beer"
    priority 2

    factory :vote do
      name 'vote'
      priority 1
    end

    factory :invalid_task do
      name nil
      priority nil
    end
  end

  factory :homework, class: Task do
    association :user
    name "complete homework"
    priority 1
  end

  factory :email, class: Task do
    association :user
    name "reply to Zack's email"
    priority 2
  end
end
