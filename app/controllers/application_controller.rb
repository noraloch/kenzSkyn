class ApplicationController < ActionController::API

    def authenticate
        # Check user's token
        # if their token is valid, get their info from db => return user
        # if not, return some error
        auth_header = request.headers["Authorization"]
        token = auth_header.split.last
        decoded_token = JWT.decode(token, "2c295f18ac6f632aae2b88194717d428bc8ad9fa90fc71ddf3902d5d6a573119d1237896575f3cb792ea8ec94e3fcef4febff9d125cd59cb61c418955e44f41f", true, { algorithm: 'HS256' })
        user_id = decoded_token[0]["user"]
        @current_user = User.find_by(id: user_id)
    end
end
