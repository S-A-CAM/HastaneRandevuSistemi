import React, {Component} from 'react';
import { Platform, StyleSheet, Text, TextInput, View, ScrollView, TouchableOpacity, Image, Picker, Alert} from 'react-native';

export class AdminYeniBolumEkleme extends Component{

	constructor(props){
		super(props);
		this.state = {
        	validateName: false,
        	clickability: true,
        	bolumAdi: '',
		}
	}

	componentDidMount = () => {
		
	}

	validateName = (text) => {
	    alph=/^\s*[a-zA-Z,ç,Ç,ğ,Ğ,ı,İ,ö,Ö,ş,Ş,ü,Ü,\s]+\s*$/
	    if(alph.test(text) && text != '') 
	    	this.setState({validateName: true, bolumAdi: text}) 
	    else
	      	this.setState({validateName: false})
      	this.disabledButton();
    }

    disabledButton = () => {
      	if(this.state.validateName)
        	this.setState({clickability: false})
      	else
        	this.setState({clickability: true})
    }

    Kaydet = () => {
    	let bolum = {
			bolumAdi: this.state.bolumAdi
				

		}
    	//TODO: bolum adi (yukarıdaki bolum nesnesini) apiye gönder ve kayıt işlemini yap
			if(this.state.validateName && this.state.bolumAdi != '')
			 {
				fetch("http://hastaneapi-6b885d43.francecentral.cloudapp.azure.com/api/Bolum/Add",{
					method:"POST",
					headers: {
						'Accept': 'application/json',
						'Content-Type': 'application/json'
					},
					body:JSON.stringify(bolum)
				})
				.then(()=>this.props.navigation.navigate("AdminBolumIslemleri"))
				.catch(err=>alert(err));
	      }
			
			else{
        	this.setState({clickability: true})
        	Alert.alert('Hata!', 'Bölüm adı boş geçilemez!')
      	  }
    }

	render(){
		
		return (
			<View style={styles.container}>

				<View>
					<Text style={styles.text}>Bölüm Adı:</Text>
	              	<TextInput id='ad' onChangeText={(text) => this.validateName(text)} 
	                         maxLength={20} 
	                         style={styles.textInput} /*value ={this.state.User.ad}*//>
                </View>         	


              	<View style={styles.buttonContainer}>
		              <TouchableOpacity disabled={this.state.clickability} 
		                                style={[styles.btn, this.state.clickability ? styles.disabled : null]}
		                                onPress={() => this.Kaydet()}>
		                <Text style={{color:'white'}} >Kaydet</Text>
		              </TouchableOpacity>
            	</View>

			</View>
		);
	}
}
export default AdminYeniBolumEkleme;

const styles = StyleSheet.create({
	container: {
    	justifyContent: 'center',
  	},
  	textInput:{
	    width:'96%',
	    borderRadius: 15,
	    borderWidth: 0.5,
	    borderColor: '#f26522', 
	    backgroundColor:'white',
	    fontSize: 15,
	    fontWeight: 'bold',
	    marginLeft: '2%',
	},
  	text:{
    	textAlign:'left', 
    	fontSize: 15,
    	fontWeight: 'bold',
    	paddingLeft: '7%',
    	paddingTop: '5%',
    	paddingBottom: '3%',
  	},
  	buttonContainer: {
    	paddingTop: '15%',
   		flexDirection:'row',
    	justifyContent: 'center',
  	},
  	btn:{
    	borderRadius:20,
    	backgroundColor:'#f26522',
    	width:'60%',
    	height:50,
    	justifyContent: 'center',
    	alignItems: 'center',
  	},
  	error:{
   		borderColor: 'red',
    	borderWidth: 2,
  	},
  	disabled: {
    	opacity: 0.6,
  	}
});