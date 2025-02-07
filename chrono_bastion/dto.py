from datetime import datetime
from typing import List, Optional

from pydantic import BaseModel


class ErrorResponse(BaseModel):
    detail: str


class LinkResponse(BaseModel):
    href: str
    rel: str
    type: str


class StatusViewResponse(BaseModel):
    service: str
    version: str
    environment: str
    links: Optional[List[LinkResponse]]

class CurrentDateTime(BaseModel):
    current_date_time: datetime