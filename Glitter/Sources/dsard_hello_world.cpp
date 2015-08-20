#include <fstream>
#include <string>
#include <chrono>

#include "dsard_hello_world.h"
namespace dsard {

	GLuint mShaderProgram;
	std::chrono::time_point<std::chrono::steady_clock> t_start;

	const GLchar* vertexSource =
		"#version 150 core\n"
		"in vec2 position;"
		"void main() {"
		"   gl_Position = vec4(position, 0.0, 1.0);"
		"}";
	const GLchar* fragmentSource =
		"#version 150 core\n"
		"out vec4 outColor;"
		"uniform vec3 triangleColor;"
		"void main() {"
		"   outColor = vec4(triangleColor, 1.0);"
		"}";

	const char* loadFile(const char* filename) {
		std::ifstream ifs(filename);
		std::string content((std::istreambuf_iterator<char>(ifs)),
			(std::istreambuf_iterator<char>()));

		fprintf(stdout, "Loaded file: %s\n", content.c_str());

		return content.c_str();
	}

	GLuint compileShader(GLenum shaderType, const char* filename) {
		fprintf(stdout, "Compiling shader from %s\n", filename);

		const char* shaderSource = loadFile(filename);

		GLuint shader = glCreateShader(shaderType);
		glShaderSource(shader, 1, &shaderSource, NULL);
		glCompileShader(shader);

		GLint status;
		glGetShaderiv(shader, GL_COMPILE_STATUS, &status);

		const GLsizei logBufferLength = 512;
		char buffer[logBufferLength];
		glGetShaderInfoLog(shader, logBufferLength, NULL, buffer);
		fprintf(stdout, "Shader info log: %s\n", buffer);

		return shader;
	}

	GLuint compileShaderProgram(const char* vsFilename, const char* fsFilename) {
		fprintf(stdout, "Compiling shader program from %s and %s\n", vsFilename, fsFilename);
		GLuint vertexShader = compileShader(GL_VERTEX_SHADER, vsFilename);
		GLuint fragmentShader = compileShader(GL_FRAGMENT_SHADER, fsFilename);

		fprintf(stdout, "vertexShader: %d\n", vertexShader);
		fprintf(stdout, "fragmentShader: %d\n", fragmentShader);

		GLuint shaderProgram = glCreateProgram();
		glAttachShader(shaderProgram, vertexShader);
		glAttachShader(shaderProgram, fragmentShader);

		glBindFragDataLocation(shaderProgram, 0, "outColor");

		glLinkProgram(shaderProgram);

		glUseProgram(mShaderProgram);

		return shaderProgram;
	}

	void HelloWorld::init() {
		fprintf(stdout, "HelloWorld::init(), foo = %s\n", "foo");

		
		t_start = std::chrono::high_resolution_clock::now();
		/*
		GLuint vao;
		glGenVertexArrays(1, &vao);
		glBindVertexArray(vao);

		GLuint vbo;
		glGenBuffers(1, &vbo);

		GLfloat vertices[] = {
			0.0f, 0.5f,
			0.5f, -0.5f,
			-0.5f, -0.5f
		};

		glBindBuffer(GL_ARRAY_BUFFER, vbo);
		glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

		mShaderProgram = compileShaderProgram(
			"D:\\Files\\Projects\\GraphicsEngine\\Glitter\\Shaders\\helloworld.vs", 
			"D:\\Files\\Projects\\GraphicsEngine\\Glitter\\Shaders\\helloworld.fs");

		fprintf(stdout, "mShaderProgram: %d\n", mShaderProgram);
		*/

		// Create Vertex Array Object
		GLuint vao;
		glGenVertexArrays(1, &vao);
		glBindVertexArray(vao);

		// Create a Vertex Buffer Object and copy the vertex data to it
		GLuint vbo;
		glGenBuffers(1, &vbo);

		GLfloat vertices[] = {
			0.0f, 0.5f,
			0.5f, -0.5f,
			-0.5f, -0.5f
		};

		glBindBuffer(GL_ARRAY_BUFFER, vbo);
		glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

		// Create and compile the vertex shader
		GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
		glShaderSource(vertexShader, 1, &vertexSource, NULL);
		glCompileShader(vertexShader);

		// Create and compile the fragment shader
		GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
		glShaderSource(fragmentShader, 1, &fragmentSource, NULL);
		glCompileShader(fragmentShader);

		// Link the vertex and fragment shader into a shader program
		mShaderProgram = glCreateProgram();
		glAttachShader(mShaderProgram, vertexShader);
		glAttachShader(mShaderProgram, fragmentShader);
		glBindFragDataLocation(mShaderProgram, 0, "outColor");
		glLinkProgram(mShaderProgram);
		glUseProgram(mShaderProgram);

		// Specify the layout of the vertex data
		GLint posAttrib = glGetAttribLocation(mShaderProgram, "position");
		glEnableVertexAttribArray(posAttrib);
		glVertexAttribPointer(posAttrib, 2, GL_FLOAT, GL_FALSE, 0, 0);
	}

	void HelloWorld::draw() {
		//fprintf(stdout, "HelloWorld::draw()\n");
		/*
		glUseProgram(mShaderProgram);

		GLint posAttrib = glGetAttribLocation(mShaderProgram, "position");
		glEnableVertexAttribArray(posAttrib);
		glVertexAttribPointer(posAttrib, 2, GL_FLOAT, GL_FALSE, 0, 0);
		

		

		glDrawArrays(GL_TRIANGLES, 0, 3);
		*/

		// Set the color of the triangle
		auto t_now = std::chrono::high_resolution_clock::now();
		float time = std::chrono::duration_cast<std::chrono::duration<float>>(t_now - t_start).count();

		GLint uniColor = glGetUniformLocation(mShaderProgram, "triangleColor");
		glUniform3f(uniColor, (sin(time * 4.0f) + 1.0f) / 2.0f, 0.0f, 0.0f);

		glDrawArrays(GL_TRIANGLES, 0, 3);

	}
}