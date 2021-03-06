#include "pch.h"

#include "Metal.h"
#include "VertexBuffer5Impl.h"

#include <Kore/Math/Core.h>
#include <Kore/System.h>
#import <Metal/Metal.h>
#include <cstdio>

using namespace Kore;

id getMetalDevice();
id getMetalEncoder();

namespace {
	// bool fullscreen;
	// TextureFilter minFilters[32];
	// MipmapFilter mipFilters[32];
	// int originalFramebuffer;
}

void Graphics5::destroy(int windowId) {

	System::destroyWindow(windowId);
}

void Graphics5::init(int, int, int, bool) {
	// System::createWindow();

}

void Graphics5::flush() {}

unsigned Graphics5::refreshRate() {
	return 60;
}

bool Graphics5::vsynced() {
	return true;
}

// void* Graphics::getControl() {
//	return nullptr;
//}

void Graphics5::drawIndexedVerticesInstanced(int instanceCount) {}

void Graphics5::drawIndexedVerticesInstanced(int instanceCount, int start, int count) {}

bool Graphics5::swapBuffers(int windowId) {
	System::swapBuffers(windowId);
	return true;
}

void beginGL();

void Graphics5::begin(RenderTarget* renderTarget, int windowId) {
	beginGL();
}

void Graphics5::end(int windowId) {

}

void Graphics5::setTextureAddressing(TextureUnit unit, TexDir dir, TextureAddressing addressing) {}

void Graphics5::setTextureMagnificationFilter(TextureUnit texunit, TextureFilter filter) {}

void Graphics5::setTextureMinificationFilter(TextureUnit texunit, TextureFilter filter) {}

void Graphics5::setTextureMipmapFilter(TextureUnit texunit, MipmapFilter filter) {}

void Graphics5::setTextureOperation(TextureOperation operation, TextureArgument arg1, TextureArgument arg2) {}

void Graphics5::setRenderTargetFace(RenderTarget* texture, int face) {}

bool Graphics5::renderTargetsInvertedY() {
	return true;
}

bool Graphics5::nonPow2TexturesSupported() {
	return true;
}

void Graphics5::setTexture(Graphics5::TextureUnit unit, Graphics5::Texture* texture) {
	texture->_set(unit);
}

void Graphics5::setImageTexture(TextureUnit unit, Texture* texture) {}

bool Graphics5::initOcclusionQuery(uint* occlusionQuery) {
	return false;
}

void Graphics5::deleteOcclusionQuery(uint occlusionQuery) {}

void Graphics5::renderOcclusionQuery(uint occlusionQuery, int triangles) {}

bool Graphics5::isQueryResultsAvailable(uint occlusionQuery) {
	return false;
}

void Graphics5::getQueryResults(uint occlusionQuery, uint* pixelCount) {}

void Graphics5::makeCurrent(int window) {}

void Graphics5::clearCurrent() {}

void Graphics5::changeResolution(int width, int height) {}
