.PHONY: lint format check fix

lint:
	uv run ruff check .

format:
	uv run ruff format .

check:
	uv run ruff check . && uv run ruff format --check .

fix:
	uv run ruff check --fix . && uv run ruff format .