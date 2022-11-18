User.destroy_all
Message.destroy_all

user1 = User.create(username: "Sarah", password: "password")

message1 = Message.create(user_id: user1.id, message: "Fuck you")

