using System;

public class InitialOrder
{
    public int ServiceTypeId { get; set; }
    public int ServiceCategoryId { get; set; }
    public decimal OrderRate { get; set; }
}

public class FinalOrder : InitialOrder
{
    public int OrderId { get; set; }    
    public int CustomerId { get; set; }
    public DateTime DeliveryDate { get; set; }
    public string OrderColor { get; set; }
    public decimal OrderWeight { get; set; }
    public decimal GrossTotal { get; set; }
}