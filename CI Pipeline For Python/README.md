# 🐍 CI Pipeline for Python

A simple Python Calculator application designed to demonstrate a complete continuous integration (CI) pipeline setup using GitHub Actions, pytest, and flake8.

---

## 🛠️ Key Technologies

- **Python 3.x**: Core development language.
- **pytest**: Framework for running python unit tests.
- **flake8**: Linter tool to check compliance with PEP-8 formatting standards.
- **GitHub Actions**: Platform used to build, lint, and test automatically on push events.

---

## 📂 Project Structure

```text
CI Pipeline For Python/
├── calculator.py          # Application code containing math operations
├── test_calculator.py     # Unit test cases targeting calculator functions
├── requirements.txt       # Dependencies (pytest, flake8)
└── README.md              # Documentation
```

---

## 🚀 How to Run Locally

### 1. Set Up Environment
Create and activate a virtual environment, then install dependencies:
```bash
python -m venv venv
# On Windows:
venv\Scripts\activate
# On Linux/macOS:
source venv/bin/activate

pip install -r requirements.txt
```

### 2. Run Tests
Verify all calculations are correct using `pytest`:
```bash
pytest -v
```

### 3. Run Linting Checks
Verify PEP-8 code styling compliance using `flake8`:
```bash
flake8 . --count --select=E9,F63,F7,F82 --show-source --statistics
flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics
```

---

## ⚙️ CI Pipeline Workflow
The automated workflow is configured to run on GitHub Actions (`.github/workflows/ci.yml`). Whenever you push code to this repository:
1. GitHub spins up a clean Ubuntu runner.
2. Sets up Python.
3. Installs requirements (`pytest` and `flake8`).
4. Performs code linting checks.
5. Runs the unit tests to ensure nothing is broken.
