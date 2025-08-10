#include <qguiapplication.h>
#include <qqmlapplicationengine.h>

int main(int argc, char** argv) {
	QGuiApplication QTApp(argc, argv);
	QQmlApplicationEngine engine("../assets/qml/main.qml"); // TEMP
	//QQmlApplicationEngine engine("./assets/qml/main.qml");
	QTApp.exec();
	return 0;
}
