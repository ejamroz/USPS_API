#tag Class
Protected Class Controller
	#tag Method, Flags = &h0
		Sub constructor()
		  socket = new Xojo.Net.HTTPSocket()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub process(req as USPS_API.Request)
		  //@throws USPS_API.CredentialException
		  
		  if userID <> "" and password <> NIl then
		    
		  else
		    dim err as new USPS_API.CredentialException()
		    err.Reason = "No login credentials provided"
		    
		    raise err
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setCredentials(cred as USPS_API.Credentials)
		  self.userID = cred.userID
		  self.password = cred.password
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		isSecure As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private password As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private socket As Xojo.Net.HTTPSocket
	#tag EndProperty

	#tag Property, Flags = &h21
		Private userID As string
	#tag EndProperty


	#tag Constant, Name = kSecureEndpoint, Type = String, Dynamic = False, Default = \"https://secure.shippingapis.com/ShippingAPI.dll", Scope = Private
	#tag EndConstant

	#tag Constant, Name = KStandardEndpoint, Type = String, Dynamic = False, Default = \"http://production.shippingapis.com/ShippingAPI.dll", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
