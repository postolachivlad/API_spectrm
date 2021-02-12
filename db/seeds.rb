puts 'Seeding the data base...'
Message.create(content: 'This is the first message')
Message.create(content: 'This is the second message')
Message.create(content: 'This is the third message')
Message.create(content: 'This message was sent twice', counter: 2)
Message.create(content: 'This message contains characters from different languages \"Привет мир\"')
Message.create(content: 'This message contains email \"postolachi.vlad@gmail.com\"')
puts 'Seeding complete!'
