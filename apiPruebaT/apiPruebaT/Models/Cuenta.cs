using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace apiPruebaT.Models
{
    public class Cuenta
    {
        [Key]
        public int id_cuenta { get; set; }
        public string numero_cuenta { get; set; }
        public string descripcion { get; set; }
        public DateTime fecha_ingreso { get; set; }

    }
}
