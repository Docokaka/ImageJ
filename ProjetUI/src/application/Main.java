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

		FenetrePrincipale fenetrePrincipale = new FenetrePrincipale();
		
		FenetreReglages fenetreReglages = new FenetreReglages();

		fenetreReglages.setVersPrincipale(event -> {
			primaryStage.setScene(fenetrePrincipale.getScene());
		});
		fenetrePrincipale.setVersReglages(event ->
			primaryStage.setScene(fenetreReglages.getScene())
		);

		primaryStage.setScene(fenetrePrincipale.getScene());
		primaryStage.show();

	}



}
