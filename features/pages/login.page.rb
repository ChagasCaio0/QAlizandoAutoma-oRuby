    class LoginPage < SitePrism::Page
        set_url "/login"

        element :email_field, :xpath, "//input[@id='username']"
        element :password_field, :xpath, "//input[@id='password']"
        element :login_button, :xpath, "//button[@type='submit']"

        def user_login(email, password)
            email_field.set(email)
            password_field.set(password)
            login_button.click
        end
    end

    login_page = LoginPage.new
    login_page.load
 