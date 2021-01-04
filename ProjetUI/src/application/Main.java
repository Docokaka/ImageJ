package application;
import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {

	Reglages reglages = new Reglages(120.2);

	public static void main(String[] args) {
		Application.launch(args);
	}

	@Override
	public void start(Stage primaryStage) {

		FenetreLogin fenetreLogin = new FenetreLogin();
		
		FenetreMain fenetreMain = new FenetreMain();

		fenetreMain.setVersLogin(event -> {
			primaryStage.setScene(fenetreLogin.getScene());
		});
		fenetreLogin.setVersMain(event ->
			primaryStage.setScene(fenetreMain.getScene())
		);

		primaryStage.setScene(fenetreLogin.getScene());
		primaryStage.show();

	}



}
