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
			<li class="active"><a href="#guidelines">Terms &amp; Conditions1</a></li>
			<li><a href="#documents">Important Documents</a></li>
		</ul>
	</div>
	<div class="content" style="width: 75%; margin: 0 0 0 25%">
		<a id="guidelines"></a><h1><?=$page_title?></h1>
		<h2>Construction (Design and Management) Regulations 2015</h2>

		<p>Please note that the CDM 2015 regulations now apply to ALL construction and maintenance projects regardless of the size, duration and nature of the work. Routine maintenance work will, therefore, not necessarily be exempt from the regulations.</p>

		<p>As part of this Purchase Order, <?=$name;?> request that you inform us at the outset if the work is likely to be judged as <strong>'Construction Work'</strong> as defined in the regulations. The HSE has also advised the following regarding maintenance;<br /></p>

		<p>"The definition of maintenance work has not changed. If the task in hand looks like construction work, requires construction skills and uses construction materials, it is construction work. General maintenance of fixed plant which mainly involves mechanical adjustments, replacing parts or lubrication is unlikely to be construction work".<br /></p>

		<p>Please note that CDM 2015 places a legal responsibility on our <?=$client;?> to ensure a suitable <strong>Construction Phase Plan (CPP)</strong> is drawn up for all 'construction work'-related projects both notifiable and non-notifiable (to the HSE). The Plan should be proportionate and risk-based with the content being representative of the nature and extent of the project.<br /></p>

		<p>Please be aware that although it is the Client's responsibility to ensure a CPP is in place before the project commences it is your duty, as the appointed contractor, to produce the Plan if you deem the work you are about to undertake as being 'Construction work'.<br /></p>

		<p>For single contractor projects the CPP should be prepared by the contractor and forwarded to <a href="mailto:rmgcontractors@rmguk.com?>">rmgcontractors@rmguk.com</a>. <?=$brand;?> recommend that contractor staff consider using the CDM Wizard App which is designed to make it easier for small businesses to prepare themselves for the CDM Regulations. The App is available to download <a href="http://www.citb.co.uk/en-GB/Health-Safety-and-other-topics/Health-Safety/construction-design-and-management-regulations/CDM-Wizard-App" target="_blank">here</a>.<br /></p>

		<p>For projects involving more than 1 contractor, the Client must appoint (in writing) a Principal Designer and Principal Contractor who must take the lead in terms of preparing the CPP for the Client. The Client has a responsibility during this phase to ensure that a CPP is drawn up before the construction site is set up. The Principal Designer has a duty to provide any relevant information to assist the Principal Contractor in producing the CPP.<br /></p>

		<p>For those contractors that do not have access to smart phone/tablet technology <?=$brand;?> has devised a PDF version of the CPP for contractors to complete and return to <?=$brand;?>/our client prior to the commencement of works. <a href="#documents">Download</a> the PDF version of the CPP and return to <a href="mailto:rmgcontractors@rmguk.com?>">rmgcontractors@rmguk.com</a>.<br /></p>

		<h2>Working At Height<br /></h2>
		<p>All contractor staff are to note that the Working At Height Regulations (WAHR) 2005 applies to all work at height whenever there is a risk of a fall likely to cause injury. As part of the WAHR duty holders, including employers of contractor staff, must:<br /></p>

		<ul><li>Carry out a formal risk assessment</li><li>Ensure all work at height is properly planned, organised and takes into account weather conditions</li><li>Ensure those involved in work at height are trained and competent</li><li>Ensure equipment for work at height is appropriately inspected and records maintained</li><li>Ensure risks associated with fragile surfaces are properly controlled</li></ul>
		<p>All contractor staff are to ensure that the legal duties outlined above are adhered to and that no work is undertaken at height if it is reasonably practicable to do it in another, safer, way.<br /></p>

		<h2>Data Protection Act 2018<br /></h2>
		<p>In line with the requirements of The Data Protection Act 2018 we expect you to maintain policies and procedures to comply with the 8 Principles. All responsibility for compliance lies with you in respect of any data you find yourself in possession of in the course of your contracted work for <?=$brand;?>.<br /></p>

		<h2>Bribery Act<br /></h2>
		<p><?=$brand;?> aims to abide by the requirements of the Bribery Act 2010 by ensuring that adequate procedures and guidance are in place to help staff and third parties in understanding their responsibilities.  Central to this is <?=$brand;?>'s policy on accepting Gifts and Hospitality and contractors and suppliers are requested to provide a copy of their own 'Bribery' Policy.  However, in the absence of such a policy, you will be required to comply with the following standards:<br /></p>
		<p><?=$brand;?> Staff are not allowed to offer, give, solicit or accept any bribe whether cash or other inducements to or from any person or company in order to gain commercial, contractual or regulatory advantage which could be considered unethical.  Any inducement by a contractor or supplier of services which may be deemed as inappropriate will lead to the suspension of the company/individual from any further work and a report will be made to the relevant authorities.</p>

		<p><strong>Accepting Gifts and Hospitality</strong></p>
		<p><?=$brand;?> Staff are not prohibited from accepting gifts through customary practice as long as they are proportionate and properly recorded. This includes:</p>
		<ul>
			<li>Normal and appropriate hospitality;</li>
			<li>The giving of a ceremonial gift on a festival (e.g. Christmas) or any other special occasion;</li>
			<li>The use of any recognised fast-track process provided it is available to all;</li>
			<li>The offer of resources to assist in making a decision more efficiently on behalf of the organisation.</li>
		</ul>
		<p>All gifts and hospitality are declared by Staff to Line Managers and, depending on the size of the gift or the hospitality to be provided, prior approval may be required before  acceptance can be made.  A separate declaration is also made to <?=$brand;?>'s HR department.  Failure to declare a gift or hospitality will lead to disciplinary action against the employee and suspension of the contractor from any further work with <?=$brand;?>.</p>
		<p>It is expected that all contractors and suppliers of services to <?=$brand;?> will take due regard of the above and assist in the application of the guidance outlined.</p>

		<h2>Contractor Requirements</h2>
		<p><strong>Specific to the Receipt of all Gas and Electrical Purchase Orders.</strong></p>
		<p>All contractor staff are to note that by accepting this specific job instruction, they accept responsibility and accountability, to ensure they, and their staff working at the property address, are fully qualified and certified, in accordance with legal requirements, to undertake the specific job instruction. Failure to comply with this requirement will result in <?=$brand;?> no longer recommending you, the contractor, to receive purchase orders to undertake specific job instructions.</p>

		<h2>Lift Contracts<br /></h2>
		<p><strong>Maintenance Visits &amp; Reports</strong></p>
		<p>The first maintenance visit will take place on the contract start date and auto dialler status will need to be checked, if it can be reprogrammed it will need to be reprogrammed on the first maintenance visit. If it is closed protocol non-reprogrammable, the engineer will need to inform the property manager immediately.</p>
		<p>Please ensure that you email the 60 day defects report to <a href="mailto:rmgcontractors@rmguk.com?>">rmgcontractors@rmguk.com</a>.</p>

		<h2>M&amp;E Contracts</h2>
		<p>A Risk Assessment, directly connected with this specific job instruction, has not yet been undertaken on this property and contractors are advised that they must undertake their own assessment of risk and provide instruction to their staff before the commencement of work. A copy must be forwarded to <a href="mailto:rmgcontractors@rmguk.com?>">rmgcontractors@rmguk.com</a></a> upon completion.</p>
		<p>Please see below important notice regarding asbestos.</p>

		<p><strong>Maintenance Visits &amp; Reports</strong></p>
		<p>The first maintenance visit will take place within 30 days from the date of this purchase order and all associated certification or maintenance reports, will be emailed to <a href="mailto:rmgcontractors@rmguk.com?>">rmgcontractors@rmguk.com</a> within 14 days of the site visit.</p>
		<p>All equipment/systems covered by the maintenance agreement described in the Purchase Order must be maintained and monitored in line with the manufacturers' specifications and O&amp;M manuals.</p>
		<p>Maintenance reports for all maintenance activities, will clearly indicate any remedial works required and in your professional opinion the reason for that work.</p>

		<p><strong>Dilapidation Reports</strong></p>
		<p>On completion of your first maintenance visit, you are required within 21 days of that visit, to provide <?=$brand;?> with a dilapidation/defects report, which will contain the following information for each piece of equipment.</p>
		<ol>
			<li>Equipment name</li>
			<li>Visual condition</li>
			<li>Mechanical/Electrical Condition</li>
			<li>Environmental conditions</li>
			<li>Security</li>
		</ol>
		<p>A copy must be forwarded to <a href="mailto:rmgcontractors@rmguk.com?>">rmgcontractors@rmguk.com</a> upon completion.</p>

		<h2>Soft Services Contracts</h2>
		<p>A Risk Assessment, directly connected with this specific job instruction, has not yet been undertaken on this property and contractors are advised that they must undertake their own assessment of risk and provide instruction to their staff before the commencement of work. A copy must be forwarded to <a href="mailto:rmgcontractors@rmguk.com?>">rmgcontractors@rmguk.com</a> upon completion.</p>

		<h2>Terms of Appointment</h2>
		<ol>
			<li>You will provide the services with reasonable care and skill, in a correct, safe and professional manner and use all necessary and appropriate equipment and materials required, to enable compliance with health and safety legislation.
				<ol>
					<li>You and all your employees involved in providing the services will be competent, appropriately trained and qualified, and in full possession of all the necessary information, equipment and materials, to ensure safe and satisfactory provision of the services.</li>
					<li>All breaks including comfort breaks that are afforded to you and all your employees must be taken off-site.  This also includes a no smoking policy whilst on site.</li>
					<li>You, and your employees, equipment and procedures involved in providing the services, will meet all current and future relevant health and safety legislation, regulations and requirements. All appropriate attire must be worn at all times.</li>
					<li>You will have full employer's liability insurance (minimum requirement &pound;5,000,000) as required under the Employer's Liability (Compulsory Insurance) Act 1969, should your policy expire during your appointment, please ensure copies are submitted to our offices for our files in good time to prevent suspension of services. You will also have full third-party liability insurance (minimum requirement &pound;5,000,000), sufficient to provide protection to the <?=$management_company;?>, residents at and visitors, to the development and others who might be affected by the services provided by you, and any such insurance's necessary to indemnify the <?=$management_company;?> against legal liability, with regard to any failure in health and safety performance by you or your employees, in providing the services. "Please note that if your Public Liability insurance expires during the period of your contract, you must supply a copy of the new certificate/schedule.  Furthermore, if your Public Liability insurance expires and is not renewed then all subsequent liabilities in relation to any potential claim will lie with you</li>
					<li>You will protect the <?=$management_company;?> from any future loss, damage, or liability (whether criminal or civil) suffered resulting from a breach of this agreement by you. Including any act, neglect or default of your employees or agents, and any breaches in respect of any matter arising from the provision of the services resulting in any successful claim by any third party.</li>
					<li>Provide documentation to <?=$brand;?> any accident book entries that occur on site.</li>
				</ol>
			</li>
			<li>You cannot appoint the services of this contract to anyone other than your employees, nor can you assign or transfer any of your rights or duties set out in this letter.
				<ol>
					<li>If you propose to use a subcontractor to complete works on site, you must notify us 30 days in advance, so we can assess the situation and need, and if necessary we can terminate the contract.</li>
				</ol>
			</li>
			<li>All invoices should be emailed to <a href="mailto:postroom@<?=$domain;?>">postroom@<?=$domain;?></a>, or sent to our <?=$office;?> address.  Please address your invoices <?=$invoice_address;?>. Also on your invoice our Job Number must be quoted, a unique invoice number used, the site property address quoted in full and duplicate invoices must not be presented.  Invoices not containing these details will be returned.
				<ol>
					<li>Please note our terms of payment are 30 days upon receipt of your invoice; <? if($id != 'cpl')}?>subject to funding of the Management Company.<?}?></li>
				</ol>
			</li>
			<li>The <?=$management_company;?> can terminate the contract by serving on you a notice in writing, stating that your services are to cease 28 days from the date of the notice.</li>
			<li>The <?=$management_company;?> may terminate your services without notice in the event of:
				<ul>
					<li>Your failure to observe and perform the matters set out in points 1 to 2.1 inclusive of this letter;</li>
					<li>Gross misconduct by you or your operatives;</li>
					<li>The making of any composition or arrangement with your creditors or if you are a limited company your liquidation other than members' voluntary liquidation;</li>
					<li>In any circumstance deemed necessary (without prejudice to all rights, remedies and liabilities which may have arisen at the date thereof.)</li>
				</ul>
			</li>
			<li>A Method Statement for works may sometimes be required. When requested please forward a copy to <a href="mailto:rmgcontractors@rmguk.com?>">rmgcontractors@rmguk.com</a>.
				<ol>
					<li>When you are appointed to carry out window cleaning and/or cleaning of internal communal areas. It is recommended that you obtain signatures as proof of work completed on the day. This will help to resolve any potential complaints from residents.</li>
				</ol>
			</li>
		</ol>

		<a id="documents"></a><h1>Important Documents</h1>
		<ul class="download-list">
			<li>
				<div class="pdf"></div>
				<div class="info">
					<p class="title">Construction phase plan</p>
				</div>
				<a target="_blank" href="/pdfs/CPP-RMG.pdf" class="download">
				</a>
			</li>
		</ul>
	</div>
</div>