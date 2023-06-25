import numpy as np
import typing


def cross_entropy(p: List[int], q: List[int]) -> List[float]:
    """
    Calculates and returns as a list/vector the cross entropy of 2 vectors
    """

    return -sum([p[i] * np.log(q[i]) for i in range(len(p))])CR
