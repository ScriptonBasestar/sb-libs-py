"""Testing utilities for Python projects.

This package provides tools for test management, validation, and migration:

- detect_unittest_usage: Pre-commit hook to detect unittest usage
- test_naming_validator: Validates test naming conventions
- unittest_to_pytest_migrator: Migrates unittest tests to pytest format
"""

from .detect_unittest_usage import check_unittest_usage
from .test_naming_validator import TestNamingValidator
from .unittest_to_pytest_migrator import UnittestToPytestMigrator

__all__ = [
    "check_unittest_usage",
    "TestNamingValidator",
    "UnittestToPytestMigrator",
]
