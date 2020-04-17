# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

@pedro = User.create(email: 'pedro@email.com', name:'Pedro', password: '12345678', password_confirmation: '12345678')

@jon = User.create(email: 'jon@email.com', name:'jon', password: '12345678', password_confirmation: '12345678')

@post_movie = Post.create(user_id: @pedro.id, post: "Hoje assisti o filme A start is Born")

@comment = Comment.create(user_id: @jon.id, comment: "Esse filme é muito bom!", commentable: @post_movie)

Comment.create(user_id: @pedro.id, comment: "Achei o filme muito bom mas o do freddie é bem melhor", commentable: @comment)

Comment.create(user_id: @jon.id, comment: "Não assisti o filme do freddie", commentable: @comment)

Comment.create(user_id: @pedro.id, comment: "Pois deveria assistir é um filme sensacional", commentable: @comment)

Comment.create(user_id: @jon.id, comment: "Irei assistir", commentable: @comment)
