package com.GymManager.Controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.GymManager.Entity.CustomerEntity;
import com.GymManager.Entity.RegisterEntity;
import com.GymManager.Entity.StaffEntity;
import com.GymManager.Entity.TrainingPackEntity;
import com.GymManager.ExtraClass.Message;

@Controller
@RequestMapping("admin/employee")
@Transactional
public class EmployeeController extends MethodAdminController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(method= RequestMethod.GET)
	public String index(ModelMap model) {
		StaffEntity staff = newStaff();
		model.addAttribute("staff",staff);
//		model.addAttribute("staffUpdate", staff);
		model.addAttribute("cList", getAllStaff());
		return "admin/employee";
	}
	
	// create employee
		@RequestMapping(method = RequestMethod.POST, params = "btnCreate")
		public String createStaff(ModelMap model, @Validated @ModelAttribute("staff") StaffEntity staff,
				BindingResult result, RedirectAttributes redirectAttributes) {
			System.out.println(staff.getStaffId());
			if (!result.hasErrors()) {
				Session session = factory.openSession();

				Transaction t = session.beginTransaction();
				try {

					session.save(staff);

					t.commit();
					redirectAttributes.addFlashAttribute("message", new Message("success", "Thêm thành công !!!"));

					return "redirect:/admin/employee.htm";

				} catch (Exception e) {

					t.rollback();
					System.out.println(e);
					if (e.getCause().toString().contains("duplicate key")) {
						result.rejectValue("staffId", "staff", "Mã  đã tồn tại");
					}
					if (e.getCause().toString().contains("String or binary data would be truncated")) {
						result.rejectValue("staffId", "staff", "Mã không được vượt quá 8 ký tự");
					}
				}

				finally {
					session.close();
				}
			}
			model.addAttribute("idModal", "modal-create");
			model.addAttribute("staff",staff);
			model.addAttribute("staffUpdate", staff);
			model.addAttribute("cList", getAllStaff());

			
			
			return "admin/employee";
		}

		// update customer

		// return views update
		@RequestMapping(value = "update/{id}.htm", method = RequestMethod.GET)
		public String getUpdate(ModelMap model, @PathVariable("id") String id) {

			model.addAttribute("staff", newStaff());
			model.addAttribute("staffUpdate", getStaff(id));
			model.addAttribute("idModal", "modal-update");
			model.addAttribute("cList", getAllStaff());
			
			return "admin/employee";
		}

		@RequestMapping(value = "update/{id}.htm", method = RequestMethod.POST, params = "btnUpdate")
		public String updateStaff(ModelMap model, @Validated @ModelAttribute("staffUpdate") StaffEntity staff,
				BindingResult result, RedirectAttributes redirectAttributes, @PathVariable("id") String id) {
			if (!result.hasErrors()) {
				Session session = factory.openSession();

				Transaction t = session.beginTransaction();
				try {

					session.update(staff);

					t.commit();
					redirectAttributes.addFlashAttribute("message", new Message("success", "Thêm thành công !!!"));

					return "redirect:/admin/employee.htm";

				} catch (Exception e) {

					t.rollback();
					System.out.println(e);
					if (e.getCause().toString().contains("duplicate key")) {
						result.rejectValue("staffId", "staffUpdate", "Mã  đã tồn tại");
					}
					if (e.getCause().toString().contains("String or binary data would be truncated")) {
						result.rejectValue("staffId", "staffUpdate", "Mã không được vượt quá 8 ký tự");
					}
				}

				finally {
					session.close();
				}
			}
			model.addAttribute("idModal", "modal-update");
			model.addAttribute("staff",newStaff());
			model.addAttribute("cList", getAllStaff());
			model.addAttribute("staffUpdate", staff);

			return "admin/employee";
		}

		// filter

		@RequestMapping(value = "", params = "btnFilter", method = RequestMethod.GET)
		public String saleFilter(@RequestParam Map<String, String> allParams, ModelMap model) {

			Session session = factory.getCurrentSession();

			String whereClause = "";

			String birthday = toHqlRangeCondition(allParams.get("birthdayLeft"), allParams.get("birthdayRight"),
					"birthday");

			String gender = allParams.get("gender");
			if (gender.equals("1") || gender.equals("0")) {
				gender = "gender = " + gender;
			} else
				gender = "";

			List<String> conditionCluaseList = new ArrayList<>();
			conditionCluaseList.addAll(Arrays.asList(birthday, gender));
			whereClause = toHqlWhereClause(conditionCluaseList);
			String hql = "from StaffEntity " + whereClause;
			Query query = session.createQuery(hql);
			List<StaffEntity> list = query.list();
			model.addAttribute("cList", list);
			StaffEntity staff = newStaff();
			model.addAttribute("staff", staff);
			model.addAttribute("staffUpdate", staff);
			return "admin/employee";
		}

		// method

		public List<StaffEntity> getAllStaff() {
			Session session = factory.getCurrentSession();
			String hql = "FROM StaffEntity";
			Query query = session.createQuery(hql);
			List<StaffEntity> list = query.list();
			return list;
		}

		public StaffEntity getStaff(String id) {
			Session session = factory.getCurrentSession();
			return (StaffEntity) session.get(StaffEntity.class, id);
		}

		public StaffEntity newStaff() {
			StaffEntity staff = new StaffEntity();
			staff.setStaffId(this.toPK("NV", "StaffEntity", "staffId"));
			return staff;
		}


}
