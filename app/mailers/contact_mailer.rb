class ContactMailer < ApplicationMailer
	default from: "gapzaq@yahoo.co.jp"   # 送信元アドレス
	default to: "1018zaqzaq1224@gmail.com"     # 送信先アドレス

	def received_email(contact)
		@contact = contact
		mail(:subject => 'お問い合わせを承りました')
	end
end
