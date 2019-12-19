/**
 * Copyright (c) 2010 Universitat de Lleida
 *
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *             http://www.osedu.org/licenses/ECL-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*
* Authors: Alex Ballesté i Xavier Noguero
* Contact: David Barroso (david@asic.udl.cat) , Alex Ballesté (alex@asic.udl.cat), Xavier Noguero <xavier.noguero@udl.cat> and usuaris-cvirtual@llistes.udl.cat
* Universitat de Lleida  Plaça Víctor Siurana, 1  25005 LLEIDA SPAIN
*
**/ 
		var template = curaction.target;
		
		var templatesLoaded = $.data(document.body, 'templatesLoaded');
		if(templatesLoaded == undefined || $.inArray(template, templatesLoaded) == -1){

			//cau d'importacions solicitades
			if(templatesLoaded == undefined)
				templatesLoaded = new Array();
			templatesLoaded.push(template);
			$.data(document.body, 'templatesLoaded', templatesLoaded);
		
			$.ajax({
				url: template,
				cache: false,
				dataType: "text",
				async: false,
				success: function (temp){
	
					//cerca d'screens per a importar
					var elem = document.createElement('div');
					$(elem).html(temp);
					var screens = $("div.screen", elem);
					$(elem).empty().remove();
					$.each(screens,function(i,row){
						pantalles[$(row).attr("id")] = row;
					});
				}
			});
		}

