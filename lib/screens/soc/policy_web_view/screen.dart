import 'package:flutter/material.dart';
import 'package:flutter_proj/constants/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

const String fareRuleHtml = '''<b>These Are Non Refundable Fares.</b></br>
<table border='1'>
<tr>
<th>Sector Details</th>
<th>Pax Type</th>
<th>Duration</th>
<th>Amount</th>
</tr>
<tr>
<th rowspan='1'>TYO-BKK</th>
<th rowspan='1'>Adult</th>
<td>REST OF TIME</td>
<td>USD 54.04</td>
</tr>
</table>
<br /><br />
<ul>
<li><b>There is no Minimum Stay requirement</b><br>
<li>
<b>There is no Maximum Stay requirement</b><br>
<fieldset>
<legend><b><b>Adult</b><br></b></legend>
<ul>
<li>
<b>Revalidation/Reissue</b><br>Fare Component <b>TSE0WCS6</b>&emsp; Sector <b>TYO-BKK</b> &nbsp;
<ul>
<li>Revalidation before/after departure, including failure to show at first/subsequent flight(s) : <b>Not Allowed</b></li>
<li>Reissue before/after departure, including failure to show at first/subsequent flight(s) : <b>Allowed with Restrictions</b></li>
<li>Revalidation/Reissue request, including failure to show at first flight, must be made prior to <b>10JUN25  0000</b></li>
<li>Revalidation/Reissue request, including failure to show at subsequent flight(s), must be made prior to <b>02AUG25  0000</b></li>
<li>
<b>Prior to Departure of journey</b>
<ul>
<u>Reissue</u>
<li>Penalty fee : <b>USD 31.84(at today exchange rates USD 31.84) </b></li>
<li>Maximum reissue penalty fee for entire ticket (per reissue) : <b>USD 31.84</b></li>
</ul>
</li>
<li>
<b>Failure to show at first flight</b>
<ul>
<u>Reissue</u>
<li>Penalty fee : <b>USD 31.84(at today exchange rates USD 31.84) </b></li>
<li>Maximum reissue penalty fee for entire ticket (per reissue) : <b>USD 31.84</b></li>
</ul>
</li>
<li>
<b>After departure of journey</b>
<ul>
<u>Reissue</u>
<li>Penalty fee : <b>USD 31.84(at today exchange rates USD 31.84) </b></li>
<li>Maximum reissue penalty fee for entire ticket (per reissue) : <b>USD 31.84</b></li>
</ul>
</li>
<li>
<b>Failure to show at subsequent flight(s)</b>
<ul>
<u>Reissue</u>
<li>Penalty fee : <b>USD 31.84(at today exchange rates USD 31.84) </b></li>
<li>Maximum reissue penalty fee for entire ticket (per reissue) : <b>USD 31.84</b></li>
</ul>
</li>
</ul>
</li>
<li>
<b>Refund</b><br>Fare Component <b>TSE0WCS6</b>&emsp; Sector <b>TYO-BKK</b> &nbsp;
<ul>
<li>Refund, including failure to show at first flight : <b>Allowed with Restrictions</b></li>
<li>
<b>Prior to Departure of journey</b>
<ul>
<li>Penalty fee between : <b>USD 54.04/USD 76.30</b></td></tr>
<li>Maximum Refund penalty fee for entire ticket : <b>USD 76.30</b></li>
<li>Refund request must be made prior to : <b>No restriction</b></li>
</ul>
</li>
<li>
<b>Failure to show at first flight</b>
<ul>
<li>Penalty fee : <b>USD 76.30(at today exchange rates USD 76.30) </b></li>
<li>Maximum Refund penalty fee for entire ticket : <b>USD 76.30</b></li>
<li>Refund request must be made prior to : <b>No restriction</b></li>
</ul>
</li>
<li>
<b>After departure of journey</b>
<ul>
<li>Refund request must be made prior to : <b>No restriction</b></li>
</ul>
</li>
<li>
<b>Failure to show at subsequent flight(s)</b>
<ul>
<li>Refund request must be made prior to : <b>No restriction</b></li>
</ul>
</li>
</ul>
</li>
<br><b> Revalidation is a modification of the original ticket without any reissue of a new ticket.</b><br><b> For Reissue, Penalty fees are in addition to any difference in fare.</b><br><b>* For Refund, certain Taxes are non-refundable.</b>
</ul>
</fieldset>
</ul>
<br/> <br/><b>These Are Non Refundable Fares.</b><br />
<ul>
<li>APART FROM AIRLINE CHARGES,GST+RAF+ APPLICABLE CHARGES IF ANY, WILL BE CHARGED.</li>
<li>MENTIONED FEE ARE INDICATIVE PER PAX AND PER SECTOR.</li>
<li>FOR DOMESTIC BOOKINGS, PASSENGERS ARE REQUIRED TO SUBMIT THE CANCELLATION OR REISSUE REQUEST AT LEAST 2 HOURS BEFORE THE AIRLINES CANCELLATION AND REISSUE POLICY.</li>
<li>FOR INTERNATIONAL BOOKINGS, PASSENGERS ARE REQUIRED TO SUBMIT THE CANCELLATION OR REISSUE REQUEST AT LEAST 4 HOURS BEFORE THE AIRLINES CANCELLATION AND REISSUE POLICY.</li>
</ul>
''';

class PolicyWebView extends StatelessWidget {
  const PolicyWebView({super.key});

  @override
  Widget build(BuildContext context) {
    final WebViewController webViewController = WebViewController();
    webViewController.loadHtmlString(fareRuleHtml);
    webViewController
      ..setBackgroundColor(AppColors.baseWhite)
      ..enableZoom(true)
      ..platform
      ..setJavaScriptMode(JavaScriptMode.unrestricted);

    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: webViewController,
        ),
      ),
    );
  }
}
