package com.SpringBoot.Firstwebapp.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringBoot.Firstwebapp.Entity.BarrowBooks;
import com.SpringBoot.Firstwebapp.Repositories.BBarrow;
import com.SpringBoot.Firstwebapp.model.Bbooks;

@Service
public class FineService {

	@Autowired
	BBarrow bbrp;

	public List bookFine(String uid) {
		int fine = 0;
		ArrayList<BarrowBooks> lst = (ArrayList<BarrowBooks>) bbrp.findByUserid(uid);
		ArrayList<Bbooks> lst1 = new ArrayList();

		for (int i = 0; i < lst.size(); i++) {

			BarrowBooks bk = lst.get(i);
			String sDate1 = bk.getDate();
			SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy/MM/dd");

			Calendar c = Calendar.getInstance();
			try {
				c.setTime(formatter1.parse(sDate1));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			c.add(Calendar.DAY_OF_MONTH, 7);
			String output = formatter1.format(c.getTime());
			Date date = new Date();
			long difference = 0;
			try {
				difference = formatter1.parse(date.toString()).getTime() - formatter1.parse(output).getTime();
			} catch (ParseException e) {
				e.printStackTrace();
			}
			int daysBetween = (int) (difference / (1000 * 60 * 60 * 24));
			System.out.println(daysBetween);

			if (daysBetween > 0) {
				fine = daysBetween * 10;
			}

			lst1.add(new Bbooks(bk.getBook_id(), bk.getBookname(), bk.getDate(), output, fine));

		}

		return lst1;

	}

}
