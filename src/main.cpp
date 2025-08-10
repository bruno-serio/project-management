#include <qguiapplication.h>
#include <qqmlapplicationengine.h>

int main(int argc, char** argv) {
	QGuiApplication QTApp(argc, argv);
	QQmlApplicationEngine engine("../qml/main.qml");
	QTApp.exec();
	return 0;
}
