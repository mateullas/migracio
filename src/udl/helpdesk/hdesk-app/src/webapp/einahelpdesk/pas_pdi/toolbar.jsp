<%@ taglib uri="http://sakaiproject.org/jsf/sakai" prefix="sakai" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<f:loadBundle basename="es.udl.asic.sakaiproject.tool.einahelpdesk.Messages" var="msg" />

	<sakai:view_content>
		<sakai:tool_bar>
			<sakai:tool_bar_item action="#{HDesk.processActionNovaAssistencia}" value="#{msg.paspdi_tool1}" />
			<sakai:tool_bar_item action="#{HDesk_pas_pdi.processActionConsAssistencies}" value="#{msg.paspdi_tool2}" />
			<sakai:tool_bar_item action="#{HDesk_pas_pdi.processActionConsAssistenciesHistoric}" value="#{msg.paspdi_tool3}" />
			<sakai:tool_bar_item action="#{HDesk_pas_pdi.processActionGoPregFrequents}" value="#{msg.faq}" />
		</sakai:tool_bar>
	</sakai:view_content>
