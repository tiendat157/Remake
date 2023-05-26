using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SourceCode.Service;
using SourceCode.Models;

namespace SourceCode.Controllers
{
    public class SpinController : Controller
    {
        private UsersSpinService _usersSpinService;
        public SpinController(UsersSpinService usersSpinService)
        {
            _usersSpinService = usersSpinService;
        }
        // GET: Spin
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult GetNumberOfSpin()
        {
            Models.User user = Session["User"] as Models.User;
            if (user == null)
            {
                return RedirectToAction("Index", "Home");
            }
            int result = _usersSpinService.GetNumberOfSpinsByUserID(user.ID);
            return Json(new { num = result }, JsonRequestBehavior.AllowGet);
        }
    }
}