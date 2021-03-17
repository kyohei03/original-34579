FactoryBot.define do
  factory :memo do
    hospital_name    { '山田　太郎（教授）' }
    hospital_teacher { '大阪第一病院' }
    way_id           { 2 }
    pace_id          { 2 }
    remote_id        { 2 }
    record           { '本日もお連れさまです。' }
  end
end