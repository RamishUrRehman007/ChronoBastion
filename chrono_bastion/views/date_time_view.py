from typing import Any

import dto
from domains import date_time_domain
from fastapi import APIRouter, Request

router = APIRouter()



@router.get(
    "/current-date-time",
    response_model=dto.CurrentDateTime,
    tags=["CurrentDateTime"],
)
async def get_current_datetime(
    request: Request,
) -> dto.CurrentDateTime:
    """
    To get Current Date and Time.
    \f
    :return:
    """
    current_datetime = await date_time_domain.get_current_datetime()
    return current_datetime