import config
import dto
from config import logger
from fastapi import APIRouter

router = APIRouter()


@router.get(
    "/status", operation_id="status_view", response_model=dto.StatusViewResponse
)
async def status_view() -> dto.StatusViewResponse:
    """
    Status view returning the name and version of this service and a link to Swagger documentation.

    \f
    :return:
    """

    logger.info("Called API to get the status of an application")

    return dto.StatusViewResponse(
        service="chrono_bastion",
        version=config.VERSION,
        environment=config.ENVIRONMENT,
        links=[{"href": "/docs", "rel": "documentation", "type": "GET"}],
    )
