from testpkg.tribonacci import tribonacci

def test_tribonacci():
    assert tribonacci(1) == 1
    assert tribonacci(10) == 149