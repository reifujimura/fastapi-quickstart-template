from server import app
from fastapi.testclient import TestClient


client = TestClient(app)


def test_get_root():
    response = client.get("/")
    assert response.status_code == 200
    assert response.text == '"Hello, World!"'
