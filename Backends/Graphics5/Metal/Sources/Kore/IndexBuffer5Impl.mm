#include "pch.h"

#include <Kore/Graphics5/Graphics.h>

#import <Metal/Metal.h>

using namespace Kore;

id getMetalDevice();

Graphics5::IndexBuffer* IndexBuffer5Impl::current = nullptr;

IndexBuffer5Impl::IndexBuffer5Impl(int count) : myCount(count) {}

Graphics5::IndexBuffer::IndexBuffer(int indexCount, bool gpuMemory) : IndexBuffer5Impl(indexCount) {
	id<MTLDevice> device = getMetalDevice();
	mtlBuffer = [device newBufferWithLength:sizeof(int) * indexCount options:MTLResourceOptionCPUCacheModeDefault];
}

Graphics5::IndexBuffer::~IndexBuffer() {
	unset();
}

int* Graphics5::IndexBuffer::lock() {
	id<MTLBuffer> buffer = mtlBuffer;
	return (int*)[buffer contents];
}

void Graphics5::IndexBuffer::unlock() {}

void Graphics5::IndexBuffer::_set() {
	current = this;
}

void IndexBuffer5Impl::unset() {
	if ((void*)current == (void*)this) current = nullptr;
}

int Graphics5::IndexBuffer::count() {
	return myCount;
}
