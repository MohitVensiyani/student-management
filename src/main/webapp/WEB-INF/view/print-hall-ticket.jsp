<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="/student-management/UrlToReachResourceFolder/css/admitcard.css">
    <title>Document</title>
</head>

<body>

    <div class="container-center1 ">


	<form:form action="print-hallTicket" modelAttribute="hallTicket" method="POST" enctype="multipart/form-data">
        <table class="table">
            <thead>
                <tr>
                    <th colspan="8" class="text-center head-section ">
                        <div class="text-center"><img src="/student-management/UrlToReachResourceFolder/images/admitcard-logo.jpg" alt=""></div>
                        <p class="mt-2">Government of Maharashtra</p>
                        <p>State Common Entrance Test Cell, Mumbai.</p>
                        <p class="pb-4"> 8th Floor, New Excelsior Building, A. K.
                            Nayak Marg, Fort, Mumbai- 400 001</p>
                    </th>
                </tr>

                <tr>
                    <th colspan="8" class="text-center"> HALL TICKET
                    </th>

                </tr>
                <tr>
                    <th colspan="8" class="text-center">MAH-MBA/MMS CET 2021 Online Examination
                    </th>

                </tr>
            </thead>
            <tbody>
                <tr>
               		 <form:hidden path="hall_ticket_id" />
               		 <form:hidden path="id" />
                    <td colspan="2" width="170px">Candidate Full Name :</td>
                    <td colspan="6" width="410px"> <form:input path="candidate_name" type="text" style="border: none; outline: none; width: 500px;"
                            /></td>

                </tr>
                <tr>
                    <td colspan="2" width="170px">Exam Date : </td>
                    <td colspan="2" width="170px"> <form:input path="exam_date" type="date" style="border: none; outline: none;"/> </td>
                    <td colspan="2" width="120px">Exam Time : </td>
                    <td colspan="2" width="120px"> <form:input path="exam_time" type="time" style="border: none; outline: none;"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="170px">Reporting Time : </td>
                    <td colspan="2" width="170px"><form:input path="reporting_time" type="time" style="border: none; outline: none;"/></td>
                    <td colspan="2" width="120px">Gate Closure Time : </td>
                    <td colspan="2" width="120px"><form:input path="gate_close_time" type="time" style="border: none; outline: none;"/>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="170px">Roll No/Login ID : </td>
                    <td colspan="2" width="170px"><form:input path="roll_no" type="text" style="border: none; outline: none;"/></td>
                    <td colspan="2" width="120px">DOB/Password : </td>
                    <td colspan="2" width="120px"><form:input path="pass" type="text" style="border: none; outline: none;"/>

                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="170px">Question Paper Language : </td>
                    <td colspan="2" width="170px"><form:input path="que_paper_language" type="text" style="border: none; outline: none;"/></td>
                    <td colspan="2" width="120px">Subject : </td>
                    <td colspan="2" width="120px"><form:input path="subject" type="text" style="border: none; outline: none;"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" width="340px" height="300px">
                        <p style="
                        padding-top: 60px; padding-bottom: 25px;
                    " style="
                        padding-top: 60px; padding-bottom: 25px;
                    ">Venue/Server code:<form:input path="venue_code" class="form-control" type="text" /></p>
                        <p>Exam Centre Details :</p> 
                        <form:textarea path="exam_centre_detail" class="form-control" type="text" />
                    </td>
                    <td colspan="2" width="120px">
                        <p style="
                        padding-top: 70px; 
                    ">PLEASE AFFIX YOUR RECENT </p>
                        <p>PASSPORT SIZE COLOUR</p>
                        <p>PHOTOGRAPH & SIGN ACROSS</p>
                        <form:input path="photo" class="form-control" type="file" />
                    </td>
                    
                    <td colspan="2" width="100px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="C:\Users\m.mohan.vensiyani\Desktop\infosai\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\student-management\src\main\webapp\resources\uploaded\Hallticket-Data\13014582_Mohit_Vensiyani_passport size photo.jpeg" alt="image" style="border: 1px solid #555555;width:200px;height:260px;max-height:100%; max-width:100%;margin-left: auto;margin-right: auto;"/></td>
                </tr>
                <tr>
                    <td colspan="4" width="340px">Gender : </td>
                    <td colspan="2" width="120px">Date of Birth : </td>
                    <td colspan="2" width="120px">Application Number : </td>
                </tr>
                <tr>
                    <td colspan="4" width="340px"><form:input path="gender" type="text" style="border: none; outline: none;width: 300px;"/>
                    </td>
                    <td colspan="2" width="120px"><form:input path="dob" type="date" style="border: none; outline: none;"/> </td>
                    <td colspan="2" width="120px"><form:input path="application_number" type="text" style="border: none; outline: none;"/> </td>
                </tr>
                <tr>
                    <td colspan="2" width="170px">Is Disabled : </td>
                    <td colspan="2" width="170px"><form:input path="is_disable" type="text" style="border: none; outline: none;"/></td>
                    <td colspan="2" width="120px">Disability Type : </td>
                    <td colspan="2" width="120px"><form:input path="disablity_type" type="text" style="border: none; outline: none;"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" width="170px">Extra Time Required : </td>
                    <td colspan="2" width="170px"><form:input path="extra_time_Req" type="time" style="border: none; outline: none;"/></td>
                    <td colspan="2" width="120px">Scribe Required : </td>
                    <td colspan="2" width="120px"><form:input path="scribe_req" type="text" style="border: none; outline: none;"/></td>
                </tr>
                <tr>
                    <td colspan="2" width="170px" class="py-4">Candidate Address :
                    </td>
                    <td colspan="6" width="410px" class="px-4"><form:textarea path="candidate_add" class="form-control" type="text" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="text-center py-3"> Candidate's Signature<br>
                        <input type="text" class="mt-2" disabled style="
                        width: 340px;
                       height: 70px;
                        border-color: #000000;
                        background-color:#ffffff;
                    "> <br>
                        <p class="pt-4">To be signed in front of Invigilator</p>
                    </td>
                    <td colspan="4" class="text-center py-3">Invigilator's Signature <br> <input type="text"
                            class="mt-2" disabled style="
                        width: 340px;
                       height: 70px;
                        border-color: #000000;
                        background-color:#ffffff;
                    "> <br>
                        <p class="pt-4"> Invigilator should verify Candidate and then sign here</p>
                    </td>
                </tr>
            </tbody>


        </table>
        <!-- <div align="center">
       		<input type="submit" value="Print" class="btn btn-outline-success">
        </div> -->
	</form:form>

	





    </div>
    <div class="container-center2 ">
        <div class="box  ">
            <h4 class="text-center mt-4 mb-5">INSTRUCTIONS</h4>
            <div class="details d-flex px-3">

                <span class="num">1.</span>
                <div>
                    <p class="px-1"> The examination will be conducted online. You will be required to enter Login ID
                        and Password, as
                        given above, to enter the On-Line exam site. Please ensure that
                        your Name and other details which will subsequently appear on the screen are correct. You must
                        maintain secrecy of the username & password.</p>
                </div>

            </div>
            <div class="details d-flex px-3">

                <span class="num">2.</span>
                <p class="px-1 "> <b> You are required to bring this Hall Ticket with currently valid photo identity
                        proof in original. Please note that your name as appearing on the Hall
                        Ticket (provided by you during the process of registration) should reasonably match with the
                        name as appearing on the photo identity proof. <br>
                        Female candidates who have changed first/last/middle name post marriage must take special note
                        of this. If there is any mismatch between the <br>
                        name indicated in the Hall Ticket and Photo Identity Proof, you will not be allowed to appear
                        for the exam. In case of candidates who have
                        changed their name will be allowed only if they produce Gazette notification/their marriage
                        certificate/affidavit. </b></p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">3.</span>
                <p class="px-1 "> Candidates opted for Scribe shall bring the duly filled prescribed pro-forma &
                    disability certificate. Candidates opted for extra time (including Learning Disability) shall
                    produce disability certificate issued by the appropriate authority in original for verification to
                    the invigilator.
                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">4.</span>
                <p class="px-1 "> Brochure giving information/instructions about the nature of examination is available
                    on the website of State CET CELL. Please download the Brochure and study it
                    carefully.
                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">5.</span>
                <p class="px-1 "> You must bring a ball point pen with you. You will have to sign the attendance sheet
                    in the presence of the Invigilator.
                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">6.</span>
                <p class="px-1 ">The mere fact that the Hall Ticket has been issued to you does not imply that your
                    candidature has been finally cleared by State CET Cell or that the entries made by
                    you in your application for examination have been accepted by State CET Cell as true and correct. It
                    may be noted that State CET Cell will take up verification of
                    eligible candidates, i.e., educational qualifications and category with reference to original
                    documents, only at the time of document verification of candidates who
                    qualify on the basis of result of the online examination. You may therefore please note that if at
                    any stage you do not satisfy the eligibility criteria as given in the
                    notification or the information furnished by you in the application is incorrect, your candidature
                    is liable to be cancelled forth-with with such further actions as State
                    CET Cell may like to take.

                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">7.</span>
                <p class="px-1 "><b> Your responses (answers) will be analyzed with other candidates to detect patterns
                        of similarity of right and wrong answers. If in the analytical
                        procedure adopted in this regard, it is inferred/concluded that the responses have been shared
                        and scores obtained are not genuine/valid, your
                        candidature may be cancelled and/or the result withheld.</b>

                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">8.</span>
                <p class="px-1 "> <b>You must report at the examination venue 30 minutes before the time as printed on
                        this Hall Ticket. Candidates arriving late will not be
                        permitted to appear for the on-line examination.</b>

                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">9.</span>
                <p class="px-1 "> Use of books, notebooks, calculators, watch calculators, pagers, mobile phones etc. is
                    not permitted in this examination. Candidates are advised not to bring any of
                    the banned items including mobile phones/pagers to the venue of examination as safety arrangement
                    cannot be assured. Any candidate found resorting to any unfair
                    means or malpractice or any misconduct while appearing for the examination including
                    giving/receiving help to/from any candidate during the examination will be
                    disqualified. The candidate should be vigilant to ensure that no other candidate is able to copy
                    from his/her answers.

                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">10.</span>
                <p class="px-1 "> Any request for change of date/session/Centre/venue will not be entertained.

                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">11.</span>
                <p class="px-1 "> The possibility of occurrence of some problem in the administration of the examination
                    cannot be ruled out completely which may impact test delivery and/or result
                    from being generated. In that event, every effort will be made to rectify such problem, which may
                    include movement of candidates, delay in test. Conduct of a reexam is at the absolute discretion of
                    test conducting body. Candidates will not have any claim for a re-test. Candidates not willing to
                    move or not willing to
                    participate in the delayed process of test delivery shall be summarily rejected from the process.


                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">12.</span>
                <p class="px-1 "> The scores across various sessions will be equated to adjust for slight differences in
                    difficulty level of different test batteries used across sessions. More than one
                    session are required if the nodes capacity is less or some technical disruption takes place at any
                    Centre or for any candidate.


                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">13.</span>
                <p class="px-1 "> Instances for providing incorrect information and/or process violation by a candidate
                    detected at any stage of the admission process will lead to disqualification of the
                    candidate from the admission process and he/she will not be allowed to appear in admission process
                    of the State CET Cell in the future. If such instances go
                    undetected during the current process but are detected subsequently, such disqualification will take
                    place with retrospective effect.

                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">14.</span>
                <p class="px-1 "> Anyone found to be disclosing, publishing reproducing, transmitting, storing or
                    facilitating transmission and storage of test contents in any form or any information
                    therein in whole or part thereof or by any means verbal or written, electronic or mechanical or
                    taking away the papers supplied in the examination hall or found to be
                    in unauthorized possession of test content is likely to be prosecuted.


                </p>
            </div>
            <div class="details d-flex px-3">

                <span class="num">15.</span>
                <p class="px-1 ">For any issue, please contact helpdesk no. <b>7406711095</b>

                </p>
            </div>


        </div>


    </div>

    </div>
    















    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>