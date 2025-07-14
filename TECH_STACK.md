# 🧱 TECH STACK – Python 라이브러리 프로젝트

이 프로젝트는 Python 기반 라이브러리 개발을 위한 현대적인 기술 스택을 따릅니다.

---

## 🐍 Python & 환경 관리

- Python `>=3.11`
- [uv](https://github.com/astral-sh/uv) – 가상환경 생성 및 패키지 설치

---

## 🛠 프로젝트 관리 & 빌드

- [hatch](https://hatch.pypa.io/) – 프로젝트 생성 및 빌드 시스템
- `pyproject.toml` – 표준 구성 파일
- [build](https://pypa-build.readthedocs.io/) – 패키지 빌드
- [twine](https://twine.readthedocs.io/) – 패키지 배포 (GitHub 또는 PyPI)

---

## ✅ 테스트 및 커버리지

- [pytest](https://docs.pytest.org/)
- [pytest-cov](https://pytest-cov.readthedocs.io/)

---

## 🧹 정적 분석 및 코드 품질

- [ruff](https://docs.astral.sh/ruff/) – 린트 & 포맷팅
- [mypy](https://mypy-lang.org/) – 타입 검사
- [pre-commit](https://pre-commit.com/) – 커밋 훅으로 ruff 실행

---

## 🧾 문서화

- [Sphinx](https://www.sphinx-doc.org/)
- 확장: `autodoc`, `napoleon`
- 테마: `sphinx-rtd-theme`

---

## 🚀 CI/CD 및 배포

- [GitHub Actions](https://github.com/features/actions)
- 배포 방식: GitHub Release 또는 PyPI

---

## 📦 도구 요약

```
uv
hatch
pytest
pytest-cov
ruff
mypy
pre-commit
sphinx
build
twine
```
