from libs import dates
import dto

async def get_current_datetime(
) -> dto.CurrentDateTime:
    """
    Returns the current date and time in UTC timezone.
    """
    
    current_datetime = dates.get_utcnow()
    return dto.CurrentDateTime(current_date_time=current_datetime)