<!--[if $SkillQueue]-->
	<table class="dataTable2" border="0" cellpadding="2" cellspacing="0" width="100%" summary="Skill Queue Info" style="margin-top: 40px;">
	  <tbody style=" border-color: #000;">
	    <tr>
	      <td colspan="5" class="dataTableHeader2">Skills in Queue</td>
	    </tr>
	    <tr style="font-weight: bold;">
	   <!--   <td class="dataTableCell">#</td>	    -->
	      <td class="dataTableCell">Skill Name</td>
	      <td class="dataTableCell">Skillpoints</td>
	      <td class="dataTableCell">Starts</td>
	      <td class="dataTableCellEnd" colspan="1">Ends</td>
	      <td class="dataTableCellEnd" colspan="1">Level</td>
	    </tr>
<!--[foreach item='queue' from=$SkillQueue]-->
	    <tr>
	<!--      <td class="dataTableCell2" width="120"><!--[$queue.queuePosition]--></td> -->
	    	<td class="dataTableCell2"><a style="color: white; text-decoration: none;" onclick="javascript:i(document.getElementById('<!--[$queue.typeID]-->'));" href="#s<!--[$queue.typeID]-->" id="q<!--[$queue.typeID]-->"><!--[$queue.typeName]--></a> <span style="font-size: 9px;font-weight:normal;"> / Rank <!--[$queue.rank]--></td>
	      <td class="dataTableCell2" width="150" align="left"><!--[$queue.startSP|number_format]--> of <span style="color: gold;"><!--[$queue.endSP|number_format]--></span></td>
	      <td class="dataTableCell2" width="120"><!--[$queue.startTime|date_format:"%a, %b %d, %H:%M"]--></td>
	      <td class="dataTableCell2" width="120"><!--[$queue.endTime|date_format:"%a, %b %d, %H:%M"]--></td>
	      <td class="dataTableCell2" width="48"><img alt="level<!--[$queue.level]-->" src="/imgs/level<!--[$queue.level]-->_q.gif" width:48px; height:8px; /></td>
	    </tr>
<!--[/foreach]-->
	  </tbody>
  </table>
<!--[/if]-->