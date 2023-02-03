
from p1 import validate_email

class Validate_email_test:
    def test_validate_email_equal_to(self):
        assert "valid" == validate_email("aftab.saeedi2040@gmail.com")
    def test_validate_email_equal_to1(self):
        assert "valid" == validate_email("ankitrai326@gmail.com")
    def test_validate_email_equal_to2(self):
        assert "valid" == validate_email("my.ownsite@ourearth.org")
    def test_validate_email_equal_to3(self):
        assert "invalid" == validate_email("ankitrai326.com")

