using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Sample_App.Models
{
    public class ProductProp
    {
        public int ProductID { get; set; }
        [Display(Name = "This is a prod name")]
        [Required(ErrorMessage = "This is a required field.")]
        public string ProductName { get; set; }
        [Required(ErrorMessage = "This is a required field.")]
        public double UnitPrice { get; set; }
        public int UnitsInStock { get; set; }
        public int Category { get; set; }
    }
}