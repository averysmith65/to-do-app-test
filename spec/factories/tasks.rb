FactoryBot.define do
  factory :task do
    name "buy beer"
    due_date {DateTime.now + 1.days}
    priority 2

    factory :vote do
      name 'vote'
      due_date {DateTime.now + 2.days}
      priority 1
    end

    factory :invalid_task do
      name nil
      due_date nil
      priority nil
    end
  end

  factory :homework, class: Task do
    association :user
    name "complete homework"
    due_date {DateTime.now + 2.days}
    priority 1
  end

  factory :email, class: Task do
    association :user
    name "reply to Zack's email"
    due_date {DateTime.now}
    priority 2
  end
end
