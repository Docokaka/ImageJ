package application;


import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.GridPane;

public class FenetreMain {

	private Scene scene;
	private GridPane pane;
	private String imagepath="file://L2 Info/Genie logiciel/TBTv1(1).JPG";
	private Button exit;
	private Button manage;

	FenetreMain() {
		pane = new GridPane();
		scene = new Scene(pane, 200, 140);
		exit = new Button("Exit");
		pane.add(exit,0,2);
		
		Image image= new Image(imagepath, 100, 100, false, false);
		ImageView currentImg = new ImageView();
		currentImg.setFitWidth(130);
		currentImg.setFitHeight(130);
		currentImg.setImage(image);
		
		Button importImg = new Button("Import new image");
		Button importEss = new Button("Import new essay");
		exit = new Button("Exit");
		
		GridPane gridpane = new GridPane();
		gridpane.add(importImg, 0, 2, 1, 1);
		gridpane.add(importEss, 1, 2, 1, 1);
		gridpane.add(currentImg, 0, 1, 1, 1);
		gridpane.add(exit, 2, 3, 1, 1);
		
		gridpane.setAlignment(Pos.CENTER);
		gridpane.setPadding(new Insets(0,15,0,15));
		
		scene = new Scene(gridpane, 800, 600);
		
	}

	public void setVersLogin(EventHandler<ActionEvent> goBackAction) {
		exit.setOnAction(goBackAction);
	}

	public Scene getScene() {
		return this.scene;	
	}
	
	
}
