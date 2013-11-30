UUID_REGEX = /[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/i
SHORT_REGEX = /^([a-zA-Z0-9_-]){5}$/
ALPHABET =  [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten