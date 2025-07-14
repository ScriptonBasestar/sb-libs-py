.PHONY: help install install-dev test lint format typecheck build clean docs pre-commit-install pre-commit-run

help:
	@echo "Available commands:"
	@echo "  install           - Install package in development mode"
	@echo "  install-dev       - Install package with development dependencies"
	@echo "  test              - Run tests with coverage"
	@echo "  lint              - Run ruff linter"
	@echo "  format            - Format code with ruff"
	@echo "  typecheck         - Run mypy type checker"
	@echo "  build             - Build package"
	@echo "  clean             - Clean build artifacts"
	@echo "  docs              - Build documentation"
	@echo "  pre-commit-install - Install pre-commit hooks"
	@echo "  pre-commit-run     - Run pre-commit on all files"

install:
	uv sync

install-dev:
	uv sync --dev --all-extras

test:
	uv run pytest

lint:
	uv run ruff check .

format:
	uv run ruff format .

typecheck:
	uv run mypy src/

build:
	uv run python -m build

clean:
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info/
	rm -rf htmlcov/
	rm -rf .coverage
	rm -rf .pytest_cache/
	rm -rf .mypy_cache/
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete

docs:
	cd docs && sphinx-build -b html . _build

pre-commit-install:
	uv run pre-commit install

pre-commit-run:
	uv run pre-commit run --all-files