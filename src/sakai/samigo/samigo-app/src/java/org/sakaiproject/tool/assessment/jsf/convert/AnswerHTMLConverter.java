package org.sakaiproject.tool.assessment.jsf.convert;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;

import org.apache.commons.lang.StringEscapeUtils;

public class AnswerHTMLConverter implements Converter {

	public Object getAsObject(FacesContext arg0, UIComponent arg1, String arg2) {

		return getAsString(arg0, arg1, arg2);
	}

	public String getAsString(FacesContext arg0, UIComponent arg1, Object arg2) {
		String text = (String)arg2;
		if (text == null) return null;

		return StringEscapeUtils.unescapeHtml(text);
	}

} 
