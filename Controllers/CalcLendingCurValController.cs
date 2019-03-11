using System;
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
      // POST api/values
      //  [Route("")]
        [HttpPost]
        public CurValueResponse Post(CurValueRequest curValue)
        {
            CurValueResponse res = new CurValueResponse(); 
            int count = curValue.Accint.Length;
            res.CurVal = new double [count];
            double pct = 1.0; 
            for (int i=0; i<count; i++){
                if (curValue.Usehaircut[i]){                    
                    pct = curValue.Mipct[i]!=0 ? 100/curValue.Mipct[i] : 0;
                }
                else {
                    pct = curValue.Mipct[i] / 100;
                }
                res.CurVal[i] = Math.Round((curValue.Curvalqc[i]+curValue.Accint[i])*pct,curValue.Roundto[i]); 
            }
            return res;
        }
        
    }
}
