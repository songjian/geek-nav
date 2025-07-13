# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Category.find_or_create_by!(name: '邮件测试', position: 1)
Category.find_or_create_by!(name: '邮件服务', position: 2)

Link.find_or_create_by!(title: 'mail-tester', url: 'https://www.mail-tester.com/', category_id: 1)
Link.find_or_create_by!(title: 'resend.com', url: 'https://www.resend.com/', category_id: 2)
