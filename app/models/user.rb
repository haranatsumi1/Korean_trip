class User < ApplicationRecord
  class User < ApplicationRecord
    # has_secure_passwordを含めることで、passwordとpassword_confirmationの存在性と一致の検証が自動的に行われる
    # また、パスワードは暗号化されてpassword_digestカラムに保存される
    has_secure_password
  
    # has_secure_passwordを使用する場合、passwordのバリデーションは自動的に行われるので、最小長のみを指定
    validates :password, length: { minimum: 3 }, allow_nil: true
  
    # emailの一意性と存在性を検証
    validates :email, uniqueness: true, presence: true
  
    # nameの存在性と最大長を検証
    validates :name, presence: true, length: { maximum: 255 }
  end
  
end
