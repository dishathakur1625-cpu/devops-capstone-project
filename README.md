# Customer Accounts Microservice

![Build Status](https://github.com/dishathakur1625-cpu/cicd-final-project/actions/workflows/ci-build.yaml/badge.svg)

## Description
A simple RESTful microservice for managing customer accounts. Built with **Python** and **Flask**, tested with **nosetests**, containerized with **Docker**, continuously integrated with **GitHub Actions**, and orchestrated on **Kubernetes**.

## Setup Instructions
```bash
# Clone the repository
git clone https://github.com/dishathakur1625-cpu/cicd-final-project.git
cd cicd-final-project

# Create a virtual environment
python -m venv venv
source venv/bin/activate   # on Windows use `venv\Scripts\activate`

# Install dependencies
pip install -r requirements.txt

# Run the service locally
export FLASK_APP=service
flask run --port 8080
```

## API Endpoints
- `POST   /accounts` – Create a new account
- `GET    /accounts` – List all accounts
- `GET    /accounts/<id>` – Retrieve a specific account
- `PUT    /accounts/<id>` – Update an account
- `DELETE /accounts/<id>` – Delete an account

## License
MIT License

