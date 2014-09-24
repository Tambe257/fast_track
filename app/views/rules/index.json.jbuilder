json.array!(@rules) do |rule|
  json.extract! rule, :id, :subject, :session_id, :hint_id, :question_id, :trigger_id
  json.url rule_url(rule, format: :json)
end
