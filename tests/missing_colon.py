import pytest
from src.testpkg.missing_colon import division

def test_division_success():
    assert division(10, 2) == 5
    assert division(123, 15) == 8.2

def test_division_by_zero():
    with pytest.raises(ZeroDivisionError):
        division(23, 0)
