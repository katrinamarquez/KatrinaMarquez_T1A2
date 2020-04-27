require "tty-prompt"

prompt = TTY::Prompt.new
prompt.select("Are you a Supplier or Customer?", %w(Supplier Customer Exit))
