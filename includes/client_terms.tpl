<script>
	$(document ).on('ready', function(){
		$('.sidebar ul li a' ).on('click', function(){
			$('.sidebar ul' ).find('li.active' ).removeClass('active');
			$(this ).parent().addClass('active');
		});

		var img= $(document.createElement( 'img' ) )
			.attr({
					'src': '/images/logos/<?=$id;?>.png'
				})
				.css({
					"float": "right",
					"height": "75px",
					"margin-top": "10px"
				});

		$('.heading' ).append(img);
	});

	$(document ).on('scroll', onScroll);

	function onScroll(event){
		var scrollPos = $(document).scrollTop();
		$('.sidebar ul li a').each(function () {
			var currLink = $(this ).parent();
			var refElement = $($(this ).attr("href"));
			if (refElement.position().top <= scrollPos ) {
				$('.sidebar ul li').removeClass("active");
				currLink.addClass("active");
			}
		});
	}

</script>
<div class="main">
	<div class="sidebar">
		<ul>
			<li class="active"><a href="#guidelines">Terms &amp; Conditions</a></li>
			<li><a href="#documents">Important Documents</a></li>
		</ul>
	</div>
	<div class="content" style="width: 75%; margin: 0 0 0 25%">
		<a id="guidelines"></a><h1><?=$page_title?></h1>
		<p><strong>Many accidents that may occur in relation to activities on site can be avoided if the advice given in this booklet is followed. We feel sure that your employees will appreciate working on <?=$brand;?> Managed Sites where a high priority is given to health, safety and environmental issues, and will respect our wishes in all of these matters.</strong></p>
		<h2>Construction (Design and Management) Regulations 2015</h2>

		<p>Please note that the CDM 2015 regulations now apply to ALL construction and maintenance projects regardless of the size, duration and nature of the work. Routine maintenance work will, therefore, not necessarily be exempt from the regulations.</p>

		<p>As part of this Purchase Order, <?=$brand;?> request that you inform us at the outset if the work is likely to be judged as <strong>'Construction Work'</strong> as defined in the regulations. The HSE has also advised the following regarding maintenance;<br /></p>

		<p>"The definition of maintenance work has not changed. If the task in hand looks like construction work, requires construction skills and uses construction materials, it is construction work. General maintenance of fixed plant which mainly involves mechanical adjustments, replacing parts or lubrication is unlikely to be construction work".<br /></p>

		<p>Please note that CDM 2015 places a legal responsibility on our Client to ensure a suitable <strong>Construction Phase Plan (CPP)</strong> is drawn up for all 'construction work'-related projects both notifiable and non-notifiable (to the HSE). The Plan should be proportionate and risk-based with the content being representative of the nature and extent of the project.<br /></p>

		<p>Please be aware that although it is the Client's responsibility to ensure a CPP is in place before the project commences it is your duty, as the appointed contractor, to produce the Plan if you deem the work you are about to undertake as being 'Construction work'.<br /></p>

		<p>For single contractor projects the CPP should be prepared by the contractor and forwarded to <a href="mailto:contractors@<?=$domain;?>">contractors@<?=$domain;?></a>. <?=$brand;?> recommend that contractor staff consider using the CDM Wizard App which is designed to make it easier for small businesses to prepare themselves for the CDM Regulations. The App is available to download <a href="https://www.citb.co.uk/about-citb/partnerships-and-initiatives/construction-design-and-management-cdm-regulations/cdm-wizard-app/" target="_blank">here</a>.<br /></p>

		<p>For projects involving more than 1 contractor, the Client must appoint (in writing) a Principal Designer and Principal Contractor who must take the lead in terms of preparing the CPP for the Client. The Client has a responsibility during this phase to ensure that a CPP is drawn up before the construction site is set up. The Principal Designer has a duty to provide any relevant information to assist the Principal Contractor in producing the CPP.<br /></p>

		<p>For those contractors that do not have access to smart phone/tablet technology <?=$brand;?> has devised a PDF version of the CPP for contractors to complete and return to <?=$brand;?>/our client prior to the commencement of works. <a href="#documents">Download</a> the PDF version of the CPP and return to <a href="mailto:contractors@<?=$domain;?>">contractors@<?=$domain;?></a>.<br /></p>

		<h2>Gates & Roller Shutters<br /></h2>
		<p>It is important that for attendance to any gates or roller shutters, either instructed by the Contractors Team or the Property Manager, that a report is subsequently provided to the Contractors Team. Where there is an issue with the gate, which cannot be resolved and is unsafe to leave in operation, we require you to isolate the gate in the open position and send a notification into <a href="mailto:contractors@<?=$domain;?>">contractors@<?=$domain;?></a>. This notification should also detail the risk that would be presented in leaving this gate in operation and the required works with costs to return it to a safe working condition. Failure to comply with this instruction may result in further action being taken.
		</p>

		<h2>Working At Height<br /></h2>
		<p>All contractor staff are to note that the Working At Height Regulations (WAHR) 2005 applies to all work at height whenever there is a risk of a fall likely to cause injury. As part of the WAHR duty holders, including employers of contractor staff, must:<br /></p>

		<ul><li>Carry out a formal risk assessment</li><li>Ensure all work at height is properly planned, organised and takes into account weather conditions</li><li>Ensure those involved in work at height are trained and competent</li><li>Ensure equipment for work at height is appropriately inspected and records maintained</li><li>Ensure risks associated with fragile surfaces are properly controlled</li>
		<li>All contractor staff are to ensure that the legal duties outlined above are adhered to and that no work is undertaken at height if it is reasonably practicable to do it in another, safer, way.<br /></li></ul>

		<h2>Gas Safety (Regulation 8) <br /></h2>
		<p>The purpose of this Gas Safety guidance is to ensure that contractors are aware of the gas safety implications when undertaking work to property. Carrying out alterations, decoration and/or refurbishments to property may affect the safety of existing gas installations and appliances ….these works may include, but not limited to: <br /></p>
		<ul>
			<li>Window Replacements</li>
			<li>Cavity Wall Insulation</li>
			<li>Replacement of Ventilation</li>
			<li>Fitting Extract Fans</li>
			<li>Reducing Chimney Heights</li>
			<li>Enclosing an Existing Flue / Appliance</li>
			<li>Building Extensions</li>
			<li>Installing External / Internal Cladding</li>
			<li>Extending Existing Flues</li>
			<li>Conversions from Flat to Pitched Roofs</li>
			<li>Roofing  works</li>
			<li>Rooms Converted to Sleeping Accommodation</li>
			<li>Installing kitchens and bathrooms</li>
		</ul>
		<p>Before a significant alteration is made to properties where a gas appliance, installation or flue way is installed any implications for the gas appliance and/or installation safety need to be properly addressed. You need to demonstrate that you have exercised due diligence prior to, and during the work process, and that you have an adequate record for each step in that process.
		</p>
		<p><strong>NB Although Regulation 8 applies to gas appliances/installations, the same principles shall be applied to other fossil fuel burning appliances, i.e. solid fuel or oil.</strong></p>
		<p>The works must be undertaken with due regard to the Gas Safety (Installation and Use) Regulations 1998. Regulation 8. Existing Gas Fittings.<br/></p>

		<p><strong><u>Regulation 8(1) Existing gas fittings, states:</u></strong></p>
		<p><strong>No person shall make any alterations to any premises in which a gas fitting or gas storage vessel is fitted if that alteration would adversely affect the safety of the fitting or vessel in such a manner that, if the fitting or vessel had been installed after the alteration, there would have been a contravention of, or failure to comply with, these regulations.' </strong></p>
		<p>This regulation embraces a wide range of physical alterations to premises that may affect the safety of an existing gas fitting or installed in the premises where the alteration is to be made. Before a significant alteration is made to premises where gas appliances are installed, e.g. installation or removal of windows, air bricks, extract fan units etc, any implications for gas appliances/fittings safety need to be properly addressed. Similarly, prior consideration needs to be given to the possible effect of any modification, such as a building extension, on the safety of gas storage vessel (e.g. from any reduction in separation distances and standards of ventilation), or on service pipework (e.g. the risk of damage to buried pipework from strain/weight imposed upon it).</p>

		<p><br/><strong><u>Regulation 8(2) Existing gas fittings, states:</u></strong></p>
		<p><strong>No person shall do anything which would affect a gas fitting or flue or means of ventilation used in connection with the fitting in such a manner that the subsequent use of the fitting might constitute a danger to any person, except that this paragraph does not apply to an alteration to premises.</strong></p>
		<p>This regulation applies to everyone, not just gas installers. It supplements regulation 8(1), by prohibiting other activities (i.e. except alterations to premises) which have potential to compromise safety; this may for instance include modifications which cause blockage/obstruction of an air supply vent or flue. As in regulation 8(1), it is essential for the implications of such change or modification to be properly addressed, before work is commenced, to ensure that gas safety cannot be prejudiced in any way.</p>
		<p>Modification of any gas fitting should be made only by a competent person who is, or is employed by, a Gas Safe registered company. Alterations not comprising ‘work’ on a gas fitting but which nevertheless may affect gas safety, e.g. a change to room ventilation provisions, should also be made only by a person with the required competence. Similarly, any significant modification needs to be checked by a person before the gas fitting concerned is taken into use, to ensure that appropriate standards have been met and safety has not been compromised.</p>

		<p><br/><strong><u>Regulation 8(3) Existing gas fittings, states:</u></strong></p>
		<p><strong>In relation to any place of work under his control, an employer or self-employed person shall ensure, so far as reasonably practicable, that provisions of paragraphs (1) and (2) are complied with.</strong></p>
		<p>It is recommended that a responsible person, e.g. a principal contractor, foreman, site manager, supervisor, or other person with overall control of the work, is nominated to ensure, as far as is reasonably practicable, compliance with regulation 8(1) and 8(2).</p>

		<p><br/><strong><u>Pre Contract Start Survey</u></strong></p>
		<p>Prior to the commencement of any work, either internal or to the external fabric of a building, where gas safety may be affected, the responsible person must arrange for a survey of the property by a suitably trained person or by a Gas Safe registered contractor. The survey must assess all gas appliances, installation and flue-ways belonging to the landlord and tenant within all properties that may be affected by the proposed work, and detail any control measures that may be required.</p>
		<p>Where there is any doubt in the above survey that the proposed works may impact on the continued safety of a gas appliance, flue or installation, and the survey was not carried out by a gas safe registered person, a Gas Safe registered person must be appointed by the contractor and must then undertake these surveys. The operative undertaking these surveys must hold the necessary current competencies under ACS relevant to the appliance / installation types being surveyed. All surveys must be completed in full and signed / dated by the operative undertaking the work and include the company’s Gas Safe registration number.</p>
		<p>The survey will provide the responsible person with the following information:</p>
		<ol>
			<li>An overview of how the proposed works might affect the safety of the existing gas appliances / flues</li>
			<li>The types of appliance/position within the dwelling. If there are no gas appliances this must be recorded on the survey form.</li>
			<li>The types, positions and current construction of any flues that may be affected by the proposed work, this is to include redundant flues which are in close proximity to the work area and <strong>must be confirmed as redundant on any permit to work.</strong> </li>
			<li>Details of any alterations required to the existing flue-ways to ensure that when the work is complete the flue installation will comply with BS 5440 part1 </li>
			<li>Any method statements required ensuring the ongoing safety of the tenants and the property during the work period. In some circumstances it may require appliances to be disconnected during the alterations and re-commissioned on completion of works. This may be required with works such as such as cladding, roofing or chimney / flue work.</li>
		</ol>
		<p><br/><strong><u>Approval</u></strong></p>
		<p>The survey will require analysis by the Contractor and a suitable and sufficient method statement/safe system of work identified and provided to those carrying out the work. This will be required in order to establish a clear understanding of how the proposed work could affect the existing gas installations and will provide evidence of a proper end to end process employed in the event of external scrutiny.</p>
		<p>For further information on Regulation 8 please go to: </p>
		<p><a href="http://www.legislation.gov.uk/uksi/1998/2451/regulation/8/made" target="_blank">http://www.legislation.gov.uk/uksi/1998/2451/regulation/8/made</a>.<br/></p>

		<h2>Hand Arm Vibration (HAVs) <br /></h2>
		<p>Vibration exposure from prolonged and regular work with high-vibration hand-held tools can have adverse effects on the hands and arms of users. Without effective controls, workers using such equipment may suffer various forms of damage, collectively known as ‘hand-arm vibration syndrome’ (HAVS). The most common forms of damage are ‘vibration white finger’ (VWF) and Carpal Tunnel Syndrome, which are prescribed industrial diseases.</p>
		<p>Contractors must obtain the vibration data before deciding which equipment to hire. With the correct information provided by the supplier, employers must calculate the allowed exposure time for operatives using the equipment, and specify the controls to be implemented to ensure the specified exposure times are not exceeded.</p>
		<p>The HSE provide a vibration calculator and ready-reckoner that can be used to determine whether Exposure Action or Limit Values are likely to be exceeded and should be used to assist in the risk assessment.  This easy to use facility is available via the HSE Website at <a href="http://www.hse.gov/vibration/hav/vibrationcalc.htm" target="_blank">www.hse.gov/vibration/hav/vibrationcalc.htm</a>.</p>
		<h2>Hazardous Substances (COSHH) <br /></h2>
		<p>Chemicals and other substances used on site can affect people’s health if the hazards created are not understood and controlled e.g. working in a confined space using solvents can create a harmful concentration of vapours.  Other activities on site can also create health hazards, which must be controlled e.g. chasing, cutting or breaking concrete can cause harmful dust.</p>
		<p>The aim of the COSHH Regulations is to safeguard the health of people using or coming into contact with hazardous substances.  However, to do this the regulations must be followed along with other relevant legislation.<p>
		<p><strong><u>Storage</u></strong></p>
		<p>A trained and competent person should supervise the storage of all chemicals and hazardous substances.  Weekly checks are to be made on the chemicals and the condition of the containers and labels.</p>
		<p><strong><u>Disposal</u></strong></p>
		<p>All unused or waste chemicals and hazardous substances must be disposed of through a licensed waste disposal contractor.</p>
		<h2>Tree Preservation Order (TPO)<br /></h2>
		<p>It is an offence for contractors to carry out any work which may affect trees subject to a TPO without prior permission from the Local Authority.  In all circumstances, if the work you have been contracted to undertake will involve the cutting/pruning of trees/branches then you must check with the Local Authority if there is a TPO in place before work commences.<h2>

		<h2>Lift Contracts <br /></h2>
		<p>Maintenance Visits & Reports:</p>
		<p>The first maintenance visit will take place on the contract start date and the auto dialler status will need to be checked.  If it can be reprogrammed this will also need to be done on the first maintenance visit.  If it is closed protocol non-reprogrammable, the engineer will need to inform the <?=$brand;?> property manager immediately.</p>
		<p>Please ensure that you email the 60 day defects report to <a href="mailto:contractors@<?=$domain;?>">contractors@<?=$domain;?></a>.</p>
		<h2>Lifting Operations and Lifting Equipment Regulations 1998 (LOLER)</h2>
		<p>RMG approved contractors must ensure that the duties placed on people who operate or have control over lifting equipment and lifting accessories  are followed at all times. In most cases, lifting equipment is also work equipment so the Provision and Use of Work Equipment Regulations (PUWER) 1998 will also apply (including inspection and maintenance). As well as Working at Height Regulations (WAHR) 2005 (including assessment of impact of weather conditions and residual risk such as ground conditions, overhead cables and manoeuvrability)</p>
		<p>All lifting operations involving lifting equipment must be</p>
			<ul>
				<li>Properly planned by a competent person</li>
				<li>Appropriately supervised</li>
				<li>Carried out in a safe manner</li>
			</ul>
		<p>All appropriate paperwork must be made available to RMG on request.</p>
		<h2>M&E Contracts<br /></h2>
		<p>A Risk Assessment, directly connected with all specific job instructions, must be undertaken by all contractors on each property and appropriate instructions provided to staff before the commencement of work. A copy must be forwarded to <a href="mailto:contractors@<?=$domain;?>">contractors@<?=$domain;?></a> upon completion.</p>
		<p>Important notices regarding asbestos will appear on the purchase order.  In all cases, unless you are provided with information to the contrary, asbestos must be assumed to be present within the property.</p>
		<p>Maintenance Visits & Reports:</p>
		<p>The first maintenance visit will take place within 30 days from the date of the purchase order and all associated certification or maintenance reports, will be emailed to <a href="mailto:contractors@<?=$domain;?>">contractors@<?=$domain;?></a> within 14 days of the site visit.</p>
		<p>All equipment/systems covered by the maintenance agreement described in the purchase order must be maintained and monitored in line with the manufacturers' specifications and O&M manuals.</p>
		<p>Maintenance reports for all maintenance activities, will clearly indicate any remedial works required and in your professional opinion the reason for that work.</p>
		<p>Dilapidation Reports</p>
		<p>On completion of your first maintenance visit, you are required within 21 days of that visit, to provide <?=$brand;?> with a dilapidation/defects report, which will contain the following information for each piece of equipment.</p>
		<ul>
			<li>Equipment name</li>
			<li>Visual condition</li>
			<li>Mechanical/Electrical Condition</li>
			<li>Environmental conditions</li>
			<li>Security</li>
		</ul>
		<p>A copy must be forwarded to contractors@<?=$domain;?> upon completion.</p>

		<h2>Soft Services Contracts<br /></h2>
		<p>A Risk Assessment, directly connected with all specific job instructions, must be undertaken by all contractors on each property and appropriate instructions provided to staff before the commencement of work. A copy must be forwarded to <a href="mailto:contractors@<?=$domain;?>">contractors@<?=$domain;?></a> upon completion.</p>

		<h2>Terms of Appointment<br /></h2>
		<p>You will provide the services to the Client with reasonable care and skill, in a correct, safe and professional manner and use all necessary and appropriate equipment and materials required, to enable compliance with health and safety legislation.</p>
		<p>You and all your employees involved in providing the services will be competent, appropriately trained and qualified, and in full possession of all the necessary information, equipment and materials, to ensure safe and satisfactory provision of the services.</p>
		<p>All breaks including comfort breaks that are afforded to you and all your employees must be taken off-site. This also includes a no smoking policy whilst on site.</p>
		<p>You, and your employees, equipment and procedures involved in providing the services, will meet all current and future relevant health and safety legislation, regulations and requirements. All appropriate attire must be worn at all times.</p>
		<p>You will have full employer's liability insurance (minimum requirement £5,000,000) as required under the Employer's Liability (Compulsory Insurance) Act 1969, should your policy expire during your appointment, please ensure copies are submitted to our offices for the Client’s files in good time to prevent suspension of services. You will also have full third-party liability insurance (minimum requirement £5,000,000), sufficient to provide protection to the Client, residents at and visitors, to the development and others who might be affected by the services provided by you, and any such insurance's necessary to indemnify the Client against legal liability, with regard to any failure in health and safety performance by you or your employees, in providing the services. Please note that if your Public Liability insurance expires during the period of your contract, you must supply a copy of the new certificate/schedule. Furthermore, if your Public Liability insurance expires and is not renewed then all subsequent liabilities in relation to any potential claim will lie with you</p>
		<p>You will protect the Client from any future loss, damage, or liability (whether criminal or civil) suffered resulting from a breach of this agreement by you. Including any act, neglect or default of your employees or agents, and any breaches in respect of any matter arising from the provision of the services resulting in any successful claim by any third party.</p>
		<p>Provide documentation to Residential Management Group Ltd any accident book entries that occur on site.</p>
		<p>You cannot appoint the services of this contract to anyone other than your employees, nor can you assign or transfer any of your rights or duties set out in the purchase order.</p>
		<p>If you propose to use a subcontractor to complete works on site, you must notify us 30 days in advance, so we can assess the situation and need, and if necessary we can terminate the contract.</p>
		<p>All invoices should be emailed to <a href="postroom@<?=$domain;?>">postroom@<?=$domain;?></a>, or sent to the Client at its agent’s  Hoddesdon address. Please ensure invoices are made out to the Client, c/o <?=$name?>, RMG House, Essex Road, Hoddesdon, Hertfordshire, EN11 0DR. The Job Number must be quoted, a unique invoice number used, the site property address quoted in full and duplicate invoices must not be presented. Invoices not containing these details will be returned.</p>
	    <p>Please note the Client’s terms of payment are 30 days upon receipt of your invoice; subject to the funding constraints of the Client.</p>
	    <p>The Client can terminate the contract by serving on you a notice in writing, stating that your services are to cease 28 days from the date of the notice.</p>
	    <p>The Client may terminate your services without notice in the event of:</p>
		<p>Your failure to observe and perform the matters set out in points 1 to 2.1 inclusive of this letter;</p>
		<ul>
			<li>Gross misconduct by you or your operatives;</li>
			<li>The making of any composition or arrangement with your creditors or if you are a limited company your liquidation other than members' voluntary liquidation;</li>
			<li>In any circumstance deemed necessary (without prejudice to all rights, remedies and liabilities which may have arisen at the date thereof.)</li>
		</ul>
		<p>A Method Statement for works may sometimes be required. When requested please forward a copy to <a href="mailto:contractors@<?=$domain;?>">contractors@<?=$domain;?></a>.</p>
		<p>When you are appointed to carry out 	window cleaning and/or cleaning of internal communal areas. It is recommended that you obtain signatures as proof of work completed on the day. This will help to resolve any potential complaints from residents.</p>







		<h2><?=$name?> Client Supply Chain Code of Conduct <br /></h2>
		<p><?=$name?> ("<?=$brand?>") procures goods and services as managing agent for its clients.  Those contracts are made between <?=$brand?>'s clients and those suppliers.  <?=$brand?> wishes to ensure that this client side supply chain adheres to standards of conduct consistent with <?=$brand?>'s approach to its business and its clients.<br /></p>
		<p>This document sets out what is expected of suppliers to our clients. </p>
		<ol>
			<li><strong>Human Rights, Diversity and Equality</strong>
				<p>We expect all client supply chain partners to conduct their business to a high ethical standard and comply with legislation relevant to the business.</p>
				<p>This especially applies to:</p>
				<ul>
					<li>Respect for People and Communities — treat everyone equally and value diversity, appreciate the skills and abilities of others, put something back into the community, seek to employ local people where possible and take into account the concerns of the wider community.</li>
					<li>Discrimination — support equal pay for work of equal value, oppose discrimination or intimidation including all forms of threats of physical or psychological abuse.</li>
					<li>Child Labour — comply with child labour laws and not employ anyone under the age of 15 or where it is higher the local mandatory school leaving age in the local country.</li>
					<li>Compensation and Working Hours — comply with national laws and regulations regarding working hours, wages and benefits.</li>
					<li>Communications — be honest and transparent; use different ways of communicating taking into account peoples’ needs, language and literacy.</li>
				</ul>
			</li>

			<li><strong>Modern Slavery Act 2014</strong>
				<p>We expect all client supply chain partners to comply with obligations in the Modern Slavery Act 2014 including refraining from using forced, involuntary or debt bonded labour. All client supply chain partners must make sure their own supply chains are slavery free. Those with a turnover of £36 million or above are obliged to produce and publish a slavery and human trafficking statement every financial year, detailing any steps taken to ensure these illegal elements are not present in their business or supply chain.</p>
			</li>
			<li><strong>Blacklisting</strong>
				<p>Blacklisting is the practice of systematically denying individuals employment on the basis of information, accurate or not, held in some kind of database. Client supply chain partners should not compile, use, sell or supply a prohibited list that has been compiled with a view to being used by employers or employment agencies for the purposes of discrimination in relation to the treatment of workers.</p>
			</li>
			<li><strong>Health, Safety and Wellbeing</strong>
			Client supply chain partners should uphold high standards of health, safety and wellbeing.  All Client supply chain partners should implement systems that protect all employees, customers and others who are affected by their business activities in order to create an environment that is safe and conducive to good health and wellbeing and prevents accidents, injuries and work related illnesses.
			</li>
			<li><strong>Environmental</strong>
				<p>Client supply chain partners should:</p>
				<ul>
					<li>Ensure compliance with existing and future legislation and having processes in place to ensure they comply.</li>
					<li>Identify, measure and reduce any harmful environmental effects which may arise from their business activities through clear environmental objectives and targets.</li>
					<li>Understand and minimise the CO2 emissions which arise from activities, services and products supplied to our clients, including but not limited to waste, energy and transport.</li>
					<li>Minimise, re-use and recycle materials wherever practicable and disposing of waste to landfill only as a last resort.</li>
					<li>Provide environmental training for staff, and encouraging them to apply good environmental practice, both at work and at home.</li>
				</ul>
				<p>Client supply chain partners are encouraged to implement an Environmental and/or Energy Management System which is comparable with the requirements of the ISO14001 and ISO50001 standard.</p>
			</li>
			<li><strong>Sustainability</strong>
				<p>Client supply chain partners should work to reduce the environmental impacts of goods and services that they provide.</p>
			</li>
			<li><strong>Community Benefit</strong>
			<p>Client supply chain partners should consider and endeavour to take steps to:</p>
				<ul><li>Recruit and train economically inactive people and or disadvantages groups.</li>
					<li>Promote equality in the workplace.</li>
					<li>Make a positive impact on the environment.</li>
					<li>Contribute to local community in terms of education, regeneration and community engagement.</li>
				</ul>
			</li>
			<li><strong>Prompt payment</strong>
				<p>Client side supply chain partners should pay any sub-contracted suppliers who perform or undertake any element of sub-contracted work relating to contracts with <?=$brand?>'s clients within 30 days.</p>
			</li>
			<li>
				<strong>Open and Fair Competition</strong>
				<p>Client supply chain partners should not engage in any anti-competitive practices including price fixing, bid rigging and market sharing or cover pricing.</p>
			</li>
			<li><strong>Bribery and corruption</strong>
				<p>Bribery is offering, providing or receiving something of value as an inducement or reward for something improper. Corruption involves any of these activities: bribery, extortion, fraud, deception, collusion, cartels, abuse of power, embezzlement and money laundering. Client supply chain partners must never offer, give or receive bribes, or make or accept improper payments to obtain new business, retain existing business, or secure any improper advantage.</p>
				<p>The supplier shall comply with international anti-bribery standards as stated in the United Nations’ Global Compact and local anti-corruption and bribery laws including The Bribery Act 2010.</p>
			</li>
		</ol>





		<a id="documents"></a><h1>Important Documents</h1>
		<ul class="download-list">
			<li>
				<div class="pdf"></div>
				<div class="info">
					<p class="title">Construction phase plan</p>
				</div>
				<a target="_blank" href="/pdfs/CPP-<?=$id;?>.pdf" class="download">
				</a>
			</li>
		</ul>
	</div>
</div>
