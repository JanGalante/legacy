﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ReadFacade.Surftown.Test
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Jlm9900_webEntities : DbContext
    {
        public Jlm9900_webEntities()
            : base("name=Jlm9900_webEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<GAME> GAME { get; set; }
        public DbSet<GAME_TYPE> GAME_TYPE { get; set; }
        public DbSet<PLAYOFF_RULE> PLAYOFF_RULE { get; set; }
        public DbSet<RESULT> RESULT { get; set; }
        public DbSet<SERIES_SORT_ORDER> SERIES_SORT_ORDER { get; set; }
        public DbSet<TEAM> TEAM { get; set; }
        public DbSet<TOURNAMENT> TOURNAMENT { get; set; }
    }
}
