package application;


import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.text.Font;

public class FenetreLogin {

	
	private Scene scene;
	private boolean RequeteSQLVerifierUserID = true;
	String User = "Username";
	String Pass = "Password";
	String Conect = "Connect";
	Button LoginBTN;

	FenetreLogin() {
		TextField EnterUN = new TextField();
		TextField EnterPW = new TextField();
		Label Connect = new Label(Conect);
		LoginBTN = new Button("Login");
		
		GridPane loginpane = new GridPane();
		loginpane.setPadding(new Insets(5,5,5,5));
		loginpane.setHgap(5);
		loginpane.setVgap(5);
		loginpane.add(EnterUN, 3, 2, 1, 1);
		loginpane.add(EnterPW, 3, 3, 1, 1);
		loginpane.add(Connect, 3, 1, 1, 1);
		loginpane.add(LoginBTN, 3, 4, 1, 1);
		loginpane.setAlignment(Pos.CENTER);
		loginpane.setPadding(new Insets(1,15,1,15));
		
		EnterUN.setPromptText("Enter your username");
		EnterPW.setPromptText("Enter your password");
		Connect.setFont(new Font("Arial", 24));
		
		scene = new Scene(loginpane, 800, 600);

	}

	public void setVersMain(EventHandler<ActionEvent> goBackAction) {
		LoginBTN.setOnAction(goBackAction);
	}

		public Scene getScene() {
		return this.scene;	
		}

}