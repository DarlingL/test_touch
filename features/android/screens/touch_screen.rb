class Touchid 

    def initialize
        @login = 'finger_sign_in_button'
        @msglogin = 'You have successfully logged in' 
        @msgerror = 'Fingerprint Authentication failed.'   
    end

    def wait_for_element(type, identificator, time)
        manage.timeouts.implicit_wait = (time)
        @driver.find_element(type, identificator).displayed?
        rescue StandardError
        raise 'Elemento não localizado'
    end

    def select_login
        wait_for_element(:id, @login, 10)
        find_element(:id, @login).click
    end

    def insert_id_true
        finger_print 1
    end

    def expected_login
        text(@msglogin).displayed?
    end
    
    def insert_id_false
        finger_print 10
    end

    def expected_error_login
        text(@msgerror).displayed?
    end
end
