package application;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;

public class Login {
	private Scene loginscreen;
	private boolean RequeteSQLVerifierUserID = true;
	String User = "Username";
	String Pass = "Password";
	String Conect = "Connect";
	private Button LoginBTN;
	
	Login(){
		TextField EnterUN = new TextField();
		TextField EnterPW = new TextField();
		Label Connect = new Label(Conect);
		Button LoginBTN = new Button("Login");
		
		GridPane loginpane = new GridPane();
		loginpane.setPadding(new Insets(5,5,5,5));
		loginpane.setHgap(5);
		loginpane.setVgap(5);
		loginpane.add(EnterUN, 3, 2, 1, 1);
		loginpane.add(EnterPW, 3, 3, 1, 1);
		loginpane.add(Connect, 3, 1, 1, 1);
		loginpane.add(LoginBTN, 3, 4, 1, 1);
		loginpane.setAlignment(Pos.CENTER);
		loginpane.setPadding(new Insets(0,15,0,15));
		
		EnterUN.setPromptText("Enter your username");
		EnterPW.setPromptText("Enter your password");
		Connect.setFont(new Font("Arial", 24));
		
		loginscreen = new Scene(loginpane, 800, 600);
	}

	public void setVersMainScreen(EventHandler<ActionEvent> goBackAction) {
		if(RequeteSQLVerifierUserID==true) {
		LoginBTN.setOnAction(goBackAction);
		}
	}

		public Scene getScene() {
		return this.loginscreen;	
		}

}