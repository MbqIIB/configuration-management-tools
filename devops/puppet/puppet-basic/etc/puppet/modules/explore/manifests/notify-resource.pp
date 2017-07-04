notify {"I'm notifying you.":} # Whitespace is fungible, remember.
notify {"So am I!":}


notify {'bignotify':
  message => "I'm completely enormous, and will mess up the formatting of your code! Also, since I need to fire before some other resource, you'll need
              to refer to me by title later using the Notify['title'] syntax, and you really don't want to have to type this all over again.",
}
  
  
notify { "Mac warning": 
	message => $operatingsystem ? { 
		'Darwin' => "This seems to be a Mac.", 
		 default => "And I’m a PC.", 
		},
}
  
# To validate
# puppet parser validate explore/manifests/notify-resource.pp

# To run 
# puppet apply explore/manifests/notify-resource.pp