from app.calculator import *


def test_add():
    assert add(5, 5) == 10


def test_subtract():
    assert subtract(10, 3) == 7


def test_multiply():
    assert multiply(5, 5) == 25


def test_divide():
    assert divide(20, 5) == 4


def test_divide_zero():
    try:
        divide(10, 0)
    except ValueError:
        assert True