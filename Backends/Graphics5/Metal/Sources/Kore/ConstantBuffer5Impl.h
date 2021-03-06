#pragma once

#include <objc/runtime.h>

namespace Kore {
	class ConstantBuffer5Impl {
	public:
		id _buffer;
	protected:
		int lastStart;
		int lastCount;
		int mySize;
		const bool transposeMat3 = false;
		const bool transposeMat4 = false;
	};
}
