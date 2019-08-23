class Touchid 

    def initialize
        @login = '登录'
        @msglogin = 'logou'
        @msgerror = 'Try Again'
    end

    def wait_for_element(type, identificator, time)
        manage.timeouts.implicit_wait = (time)
        @driver.find_element(type, identificator).displayed?
        rescue StandardError
        raise 'Elemento não localizado'
    end

    def select_login
        wait_for_element(:id, @login, 10)
        toggle_touch_id_enrollment
        find_element(:id, @login).click
    end

    def insert_id_true
        touch_id(true)
    end

    def insert_id_false
        touch_id(false)
    end

    def expected_login
        wait_for_element(:id, @msglogin, 10)
    end

    def expected_error_login
        wait_for_element(:id, @msgerror, 10)
    end
end
