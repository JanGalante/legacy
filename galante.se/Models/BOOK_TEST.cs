//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace galante.se.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class BOOK_TEST
    {
        public int book_id { get; set; }
        public string book_name { get; set; }
        public string book_isbn { get; set; }
        public Nullable<int> author_id { get; set; }
    
        public virtual AUTHOR_TEST AUTHOR_TEST { get; set; }
    }
}