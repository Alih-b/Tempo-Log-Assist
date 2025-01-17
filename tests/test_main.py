import pytest
from src.main import add_numbers

@pytest.mark.parametrize("input_data, expected", [
    ([1, 2, 3], 6),
    ([0, 0, 0], 0),
    ([10, 20], 30)
])
def test_sum(input_data, expected):
    assert sum(input_data) == expected