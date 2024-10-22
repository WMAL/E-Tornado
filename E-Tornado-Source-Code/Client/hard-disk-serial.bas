Attribute VB_Name = "Module4"
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
'Please read before making use of this code!
'Disclaimer: This is illegal if executed on real victims and could land you in prison for sure.
'This is intended for educational purposes only. We take no responsibility at all for your actions.
'This code is provided by EEEDS Eagle Eye Digital Security (Oman) for education purpose only.
'For more educational source codes please visit us http://www.digi77.com
'Author of this code W. Al Maawali Founder of  Eagle Eye Digital Solutions and Oman0.net can be reached via warith@digi77.com .

'Sharing knowledge is not about giving people something, or getting something from them.
'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!


'get hard drive code added version 16

'get hard disk serial
Public Declare Function GetVolumeInformation& Lib "kernel32" _
Alias "GetVolumeInformationA" _
(ByVal lpRootPathName As String, ByVal pVolumeNameBuffer As String, _
ByVal nVolumeNameSize As Long, lpVolumeSerialNumber As Long, _
lpMaximumComponentLength As Long, lpFileSystemFlags As Long, _
ByVal lpFileSystemNameBuffer As String, _
ByVal nFileSystemNameSize As Long)

Public Const MAX_FILENAME_LEN = 256

Public Function DriveSerial(ByVal sDrv As String) As Long
 Dim RetVal As Long
 Dim str As String * MAX_FILENAME_LEN
 Dim str2 As String * MAX_FILENAME_LEN
 Dim a As Long
 Dim b As Long

 Call GetVolumeInformation(sDrv & ":\", str, MAX_FILENAME_LEN, RetVal, _
 a, b, str2, MAX_FILENAME_LEN)

 DriveSerial = RetVal
End Function





