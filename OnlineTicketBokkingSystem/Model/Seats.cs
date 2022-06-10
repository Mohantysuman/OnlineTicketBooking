using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineTicketBokkingSystem.Model
{
    public class Seats
    {
        public string SeatCode { get; set; }
        public int PricePerSeat { get; set; }
        public int SeatType { get; set; }
        public bool IsBooked { get; set; }
    }
}