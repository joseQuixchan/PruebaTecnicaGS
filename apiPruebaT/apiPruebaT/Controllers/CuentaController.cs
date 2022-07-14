using Microsoft.AspNetCore.Mvc;
using apiPruebaT.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using apiPruebaT.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace apiPruebaT.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CuentaController : ControllerBase
    {
        private readonly ApplicationDbContext context;
        public CuentaController(ApplicationDbContext context)
        {
            this.context = context;
        }

        // GET: api/<CuentaController>
        [HttpGet]
        public IEnumerable<Cuenta> Get()
        {
            return context.Cuenta.ToList();
        }

        // GET api/<CuentaController>/5
        [HttpGet("{id}")]
        public Cuenta  Get(int id)
        {
            var cuenta = context.Cuenta.FirstOrDefault(p => p.id_cuenta == id);
            return cuenta;
        }

        // POST api/<CuentaController>
        [HttpPost]
        public ActionResult Post([FromBody] Cuenta cuenta)
        {
            try
            {
            context.Cuenta.Add(cuenta);
            context.SaveChanges();
                return Ok();
            } catch(Exception ex)
            {
                return BadRequest();
            }   
        }

        // PUT api/<CuentaController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {

        }

        // DELETE api/<CuentaController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
