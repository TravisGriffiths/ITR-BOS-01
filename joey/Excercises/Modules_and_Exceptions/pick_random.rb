module RandomArrayValueFromHash
  def RandomArrayValueFromHash.pick_random_value(responses)
    # pick a random key than a random item off of the array
    type = responses.keys.sample
    responses[type].sample
  end
end
