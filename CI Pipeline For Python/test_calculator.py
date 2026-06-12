from calculator import add
from calculator import subtract
from calculator import multiply
from calculator import divide


def test_add():
    assert add(2, 3) == 5


def test_subtract():
    assert subtract(5, 2) == 3


def test_multiply():
    assert multiply(4, 3) == 12


def test_divide():
    assert divide(10, 2) == 5


def test_divide_by_zero():
    try:
        divide(5, 0)
        assert False
    except ValueError:
        assert True
