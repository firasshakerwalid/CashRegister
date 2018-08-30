using System;
using System.Collections.Generic;
using static System.Console;
namespace CashRegister
{
 class Program
 {
  static void Main()
  {
   while (true)
   {
    WriteLine("Welcome to XXX Store");
    double itemTotalPrice = 0;
    var allItems = new List<Item>();
    while (true)
    {
     Write("enter Item ID ('0' to continue): ");
     Item currentItem = GetItemId();
     if (currentItem == null) { break; }
     double itemPrice;
     if (currentItem.IsWeight)
     {
      Write("weight:");
      float itemWeight = -1;
      while (itemWeight == -1)
      {
       try { itemWeight = float.Parse(ReadLine()); }
       catch (Exception) { WriteLine("Incorect value, try again"); }
      }
      itemPrice = itemWeight * currentItem.Price;
      itemTotalPrice += itemPrice;
     }
     else
     {
      Write("quantity:");
      var itemQuantity = -1;
      while (itemQuantity == -1)
      {
       try { itemQuantity = int.Parse(ReadLine()); }
       catch (Exception) { WriteLine("Incorect value, try again"); }
      }
      if (currentItem.QuantityCoupon != 0) { itemQuantity -= Math.Abs(itemQuantity / currentItem.QuantityCoupon); }
      itemPrice = itemQuantity * currentItem.Price;
      itemTotalPrice += itemPrice;
     }
     WriteLine("{0}:{1}$", currentItem.Name.TrimEnd(), itemPrice);
     allItems.Add(new Item() {Name = currentItem.Name.TrimEnd(), Price = itemPrice});
    }
    WriteLine("Enter %  discount coupons of total price");
    var discountCoupon = -1;
    while (discountCoupon == -1)
    {
     try { discountCoupon = int.Parse(ReadLine()); }
     catch (Exception) { WriteLine("Incorect value, try again"); }
    }
    foreach (var item in allItems) { WriteLine("{0}:{1}$", item.Name.TrimEnd(), item.Price); }
    WriteLine("Total Price:{0}$", itemTotalPrice - itemTotalPrice * discountCoupon * 0.01);
    ReadLine();
    Clear();
   }
  }
  private static Item GetItemId()
  {
   Item item = null;
   while (item == null)
   {
    try
    {
     CashRegisterDBContext dbContext = new CashRegisterDBContext();
     var itemId = int.Parse(ReadLine());
     if (itemId == 0) { return null; }
     item = dbContext.Items.Find(itemId);
     if (item == null) { WriteLine("item not found, try again"); }
    }
    catch (Exception e) { WriteLine("Incorect item id, try again"); }
   }
   return item;
  }
 }
}