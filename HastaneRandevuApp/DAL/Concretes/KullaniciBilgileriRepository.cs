﻿using DAL.Abstraction;
using ModelLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Concretes
{
    public class KullaniciBilgileriRepository : RepositoryBase<KullaniciBilgileri>, IDisposable
    {
        public void Dispose()
        {
            GC.SuppressFinalize(this);
        }
    }
}
