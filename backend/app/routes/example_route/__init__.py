from asgiref.sync import sync_to_async
from fastapi import APIRouter, Request
from pydantic import BaseModel

from ...utils.server import handle_exceptions

router = APIRouter(
    tags=["example"]
)


def _get_data():
    return {}


@router.get("/data")
@handle_exceptions
async def get_data():
    return await sync_to_async(_get_data)()
