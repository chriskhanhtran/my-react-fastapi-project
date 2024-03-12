from asgiref.sync import sync_to_async
from fastapi import APIRouter

from ...utils.server import handle_exceptions

router = APIRouter(
    tags=["example"]
)


def _get_example_data():
    return {"message": "Hello World!"}


@router.get("/data")
@handle_exceptions
async def get_example_data():
    return await sync_to_async(_get_example_data)()
