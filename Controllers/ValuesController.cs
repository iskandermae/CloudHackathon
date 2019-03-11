﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using hackathon.Models;

namespace hackathon.Controllers
{
    
    [Route("api/[controller]")]
    [ApiController]
    public class CalcLendingCurValController : ControllerBase
    {

       /*
        // GET api/CalcLendingCurVal
        [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            return new string[] { "value1", "value2" };
        }


        // GET api/values/5
        [HttpGet("{id}")]
        public ActionResult<string> Get(int id)
        {
            return "value";
        }
*/
        // POST api/values
      //  [Route("")]
        [HttpPost]
        public CurValueResponse Post(CurValueRequest curValue)
        {
            CurValueResponse res = new CurValueResponse() {CurVal = new double[] {55.0, 66.5}}; 
            return res;
        }
        
    }
}
