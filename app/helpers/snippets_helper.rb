module SnippetsHelper
	def fetch_snippets
		snippets = $redis.get("snippets")
		if snippets.nil?
			snippets = Snippet.all.to_json
			$redis.set("snippets", snippets) 
			$redis.expire("snippets", 2.minutes.to_i) 
		end
		JSON.load snippets
	end
end
