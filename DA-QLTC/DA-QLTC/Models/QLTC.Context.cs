﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DA_QLTC.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class QLTC_MVCEntities : DbContext
    {
        public QLTC_MVCEntities()
            : base("name=QLTC_MVCEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<DM_DVT> DM_DVT { get; set; }
        public DbSet<DM_QUY> DM_QUY { get; set; }
        public DbSet<DM_THU_CHI> DM_THU_CHI { get; set; }
        public DbSet<DM_TU_DIEN> DM_TU_DIEN { get; set; }
        public DbSet<GD_THU_CHI> GD_THU_CHI { get; set; }
        public DbSet<LOG> LOGs { get; set; }
        public DbSet<sysdiagram> sysdiagrams { get; set; }
        public DbSet<USER> USERs { get; set; }
    }
}