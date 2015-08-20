#pragma once
// System Headers
#include <glad/glad.h>
#include <GLFW/glfw3.h>

// Standard Headers
#include <cstdio>
#include <cstdlib>

namespace dsard {
	// https://stackoverflow.com/questions/10816600/c-namespaces-how-to-use-in-header-and-source-files-correctly
	// namespace practices

	class HelloWorld {
	public:
		void init();
		void draw();
	};
}