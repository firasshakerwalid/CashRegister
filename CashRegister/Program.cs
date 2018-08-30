using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace CashRegister
{
 class Program
 {
  static void Main(string[] args)
  {
   Console.WriteLine("Welcome to XXX Store");
   double itemTotalPrice = 0;
   var allItems = new List<Item>();
   while (true)
   {
    Console.Write("enter Item ID ('0' to continue): ");
    Item currentItem = GetItemId();
    
    if (currentItem == null) { break; }
    double itemPrice;
    if (currentItem.IsWeight)
    {
     Console.Write("weight:");
     var itemWeight = float.Parse(Console.ReadLine());
     itemPrice = itemWeight * currentItem.Price ;
     itemTotalPrice += itemPrice;

    }
    else
    {
     Console.Write("quantity:");
     var itemQuantity = int.Parse(Console.ReadLine());
     if (currentItem.QuantityCoupon != 0) { itemQuantity -= Math.Abs(itemQuantity / currentItem.QuantityCoupon); }
     itemPrice = itemQuantity * currentItem.Price;
     itemTotalPrice += itemPrice;
    }
    Console.WriteLine("{0}:{1}$", currentItem.Name.TrimEnd(), itemPrice);
    allItems.Add(new Item(){Name = currentItem.Name.TrimEnd(),Price = itemPrice});

   }
   Console.WriteLine("Enter %  discount coupons of total price");
   var discountCoupon = int.Parse(Console.ReadLine());


   foreach (var item in allItems)
   {
    Console.WriteLine("{0}:{1}$", item.Name.TrimEnd(), item.Price);
   }


  Console.WriteLine("Total Price:{0}$",  itemTotalPrice - itemTotalPrice*discountCoupon*0.01);

   Console.ReadLine();
  }
  private static Item GetItemId()
  {
   Item item = null;
   while (item == null)
   {
    try
    {
     CashRegisterDBContext dbContext = new CashRegisterDBContext();
     var itemId = int.Parse(Console.ReadLine());
     if (itemId == 0) { return null; }
     item = dbContext.Items.Find(itemId);
     if (item == null) { Console.WriteLine("item not found, try again"); }
    }
    catch (Exception e) { Console.WriteLine("Incorect item id, try again"); }
   }
   return item;
  }
 }
}