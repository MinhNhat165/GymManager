package com.GymManager.Controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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

import com.GymManager.Entity.AccountEntity;
import com.GymManager.Entity.ClassEntity;
import com.GymManager.Entity.CustomerEntity;
import com.GymManager.Entity.RegisterDetailEntity;
import com.GymManager.Entity.RegisterEntity;
import com.GymManager.Entity.ScheduleEntity;
import com.GymManager.Entity.TrainingPackEntity;
import com.GymManager.ExtraClass.Message;

@Controller
@RequestMapping("admin/customer")
@Transactional
public class CustomerController extends MethodAdminController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model) {
		CustomerEntity customer = newCustomer();
		model.addAttribute("customer", customer);
		model.addAttribute("customerUpdate", customer);
		model.addAttribute("cList", getAllCustomer());
		model.addAttribute("register", newRegister());
		return "admin/customer";
	}

	// create customer
	@RequestMapping(method = RequestMethod.POST, params = "btnCreate")
	public String createCustomer(ModelMap model, @Validated @ModelAttribute("customer") CustomerEntity customer,
			BindingResult result, RedirectAttributes redirectAttributes) {
		System.out.println(customer.getCustomerId());
		if (!result.hasErrors()) {
			Session session = factory.openSession();

			Transaction t = session.beginTransaction();
			try {

				session.save(customer);

				t.commit();
				redirectAttributes.addFlashAttribute("message", new Message("success", "Thêm thành công !!!"));

				return "redirect:/admin/customer.htm";

			} catch (Exception e) {

				t.rollback();
				System.out.println(e);
				if (e.getCause().toString().contains("duplicate key")) {
					result.rejectValue("customerId", "customer", "Mã  đã tồn tại");
				}
				if (e.getCause().toString().contains("String or binary data would be truncated")) {
					result.rejectValue("customerId", "customer", "Mã không được vượt quá 8 ký tự");
				}
			}

			finally {
				session.close();
			}
		}
		model.addAttribute("idModal", "modal-create");
		model.addAttribute("customerUpdate", customer);
		return "admin/customer";
	}

	// update customer //

	// return views update
	@RequestMapping(value = "update/{id}.htm", method = RequestMethod.GET)
	public String getUpdate(ModelMap model, @PathVariable("id") String id) {

		model.addAttribute("customer", newCustomer());
		model.addAttribute("customerUpdate", getCustomer(id));
		model.addAttribute("idModal", "modal-update");
		model.addAttribute("cList", getAllCustomer());
		return "admin/customer";
	}

	@RequestMapping(value = "update/{id}.htm", method = RequestMethod.POST, params = "btnUpdate")
	public String updatCustomer(ModelMap model, @Validated @ModelAttribute("customerUpdate") CustomerEntity customer,
			BindingResult result, RedirectAttributes redirectAttributes, @PathVariable("id") String id) {
		if (!result.hasErrors()) {
			Session session = factory.openSession();

			Transaction t = session.beginTransaction();
			try {

				session.update(customer);

				t.commit();
				redirectAttributes.addFlashAttribute("message", new Message("success", "Thêm thành công !!!"));

				return "redirect:/admin/customer.htm";

			} catch (Exception e) {

				t.rollback();
				System.out.println(e.getCause());
				if (e.getCause().toString().contains("duplicate key")) {
					result.rejectValue("customerId", "customerUpdate", "Mã  đã tồn tại");
				}
				if (e.getCause().toString().contains("String or binary data would be truncated")) {
					result.rejectValue("customerId", "customerUpdate", "Mã không được vượt quá 8 ký tự");
				}
			}

			finally {
				session.close();
			}
		}
		model.addAttribute("idModal", "modal-update");
		model.addAttribute("customer", newCustomer());
		model.addAttribute("cList", getAllCustomer());
		return "admin/customer";
	}

	// register

	@RequestMapping(value = "register/{id}.htm", method = RequestMethod.GET)
	public String getRegister(ModelMap model, @PathVariable("id") String id) {
		RegisterEntity register = newRegister();
		register.setCustomer(getCustomer(id));
		model.addAttribute("pack", getAllPackAvailable());
		model.addAttribute("register", register);
		model.addAttribute("customer", newCustomer());
		model.addAttribute("customerUpdate", getCustomer(id));
		model.addAttribute("idModal", "modal-register");
		model.addAttribute("cList", getAllCustomer());
		return "admin/customer";
	}

	@RequestMapping(value = "register/{id}.htm", method = RequestMethod.POST, params = "btnRegister")
	public String comfirmRegister(HttpServletRequest request, ModelMap model, @PathVariable("id") String id,
			RedirectAttributes redirectAttributes) throws ParseException {
		String classId = request.getParameter("class");
		RegisterEntity register = newRegister();
		String typeRegister = request.getParameter("typeRegister");
		register.setCustomer(getCustomer(id));
		register.setRegisterDate(new Date());
		register.setStatus(0);
		register.setAccount(getAccount("Q"));
		if (!typeRegister.equals("0")) {

			Session session = factory.openSession();
			if (typeRegister.equals("1")) {
				Transaction t = session.beginTransaction();
				try {

					session.save(register);
					session.save(new RegisterDetailEntity(register, getClass(classId)));
					t.commit();
					redirectAttributes.addFlashAttribute("message", new Message("success", "Thêm thành công !!!"));

					return "redirect:/admin/customer.htm";

				} catch (Exception e) {

					t.rollback();
					System.out.println(e);
				}

				finally {
					session.close();
				}
			} else {
				String dateStart = request.getParameter("date-start");
				TrainingPackEntity pack = getPack(request.getParameter("pack"));

				ClassEntity personalClass = new ClassEntity();
				personalClass.setClassId(toPK("LP", "ClassEntity", "classId"));
				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
				personalClass.setDateStart(formatter.parse(dateStart));
				personalClass.setMaxPP(1);
				personalClass.setTrainingPack(pack);

				Transaction t = session.beginTransaction();
				try {

					session.save(register);
					session.save(personalClass);
					session.save(new RegisterDetailEntity(register, personalClass));
					for (int i = 2; i < 9; i++) {

						String value = request.getParameter("T" + i);
						if (value != null) {
							ScheduleEntity schedule = new ScheduleEntity(personalClass, i, Integer.parseInt(value));
							session.save(schedule);

						}
					}
					t.commit();
					redirectAttributes.addFlashAttribute("message", new Message("success", "Thêm thành công !!!"));

					return "redirect:/admin/customer.htm";

				} catch (Exception e) {

					t.rollback();
					System.out.println(e);
				}

				finally {
					session.close();
				}

			}

		}

		String classEntityId = request.getParameter("class");
		model.addAttribute("pack", getAllPackAvailable());
		model.addAttribute("register", register);
		model.addAttribute("customer", newCustomer());
		model.addAttribute("customerUpdate", newCustomer());
		model.addAttribute("idModal", "modal-register");
		model.addAttribute("cList", getAllCustomer());
		return "admin/customer";
	}

	// detail
	@RequestMapping(value = "/detail/{id}.htm", method = RequestMethod.GET)
	public String getDetail(ModelMap model, @PathVariable("id") String id) {
		model.addAttribute("customer", newCustomer());
		model.addAttribute("customerUpdate", newCustomer());
		model.addAttribute("customerDetail", getCustomer(id));
		model.addAttribute("idModal", "modal-detail");
		model.addAttribute("cList", getAllCustomer());
		return "admin/customer";
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
		String hql = "from CustomerEntity " + whereClause;
		Query query = session.createQuery(hql);
		List<CustomerEntity> list = query.list();
		model.addAttribute("cList", list);
		CustomerEntity customer = newCustomer();
		model.addAttribute("customer", customer);
		model.addAttribute("customerUpdate", customer);
		return "admin/customer";
	}

	// method

	public List<CustomerEntity> getAllCustomer() {
		Session session = factory.getCurrentSession();
		String hql = "FROM CustomerEntity";
		Query query = session.createQuery(hql);
		List<CustomerEntity> list = query.list();
		return list;
	}

	public CustomerEntity getCustomer(String id) {
		Session session = factory.getCurrentSession();
		return (CustomerEntity) session.get(CustomerEntity.class, id);
	}

	public CustomerEntity newCustomer() {
		CustomerEntity customer = new CustomerEntity();
		customer.setCustomerId(this.toPK("KH", "CustomerEntity", "customerId"));
		return customer;
	}

	public RegisterEntity newRegister() {
		RegisterEntity register = new RegisterEntity();
		register.setRegisterId(this.toPK("DK", "RegisterEntity", "registerId"));
		return register;
	}

	public List<TrainingPackEntity> getAllPackAvailable() {
		Session session = factory.getCurrentSession();
		String hql = "FROM TrainingPackEntity where status = 1";
		Query query = session.createQuery(hql);
		List<TrainingPackEntity> list = query.list();
		return list;
	}

	public TrainingPackEntity getPack(String id) {
		Session session = factory.getCurrentSession();
		return (TrainingPackEntity) session.get(TrainingPackEntity.class, id);
	}

	public ClassEntity getClass(String id) {
		Session session = factory.getCurrentSession();
		return (ClassEntity) session.get(ClassEntity.class, id);
	}
}
