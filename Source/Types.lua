type CameraInstance = Camera

export type Camera = {
	ToString: (self: Camera) -> string,
	InvokeLifecycleMethod: (self: Camera, lifecycleMethod: string, ...any) -> any,

	OnActivated: (self: Camera) -> (),
	OnDeactivated: (self: Camera) -> (),
	OnRenderStepped: (self: Camera) -> (),
}

export type CameraModule = {
	get: (name: string) -> Camera | nil,
	is: (object: Camera?) -> boolean,
	new: (name: string) -> Camera,
	wrap: (name: string, cameraInstance: CameraInstance) -> Camera
}

export type CameraProfiler = {
	SetActiveCamera: (self: CameraProfiler, cameraName: string) -> (),
	GetActiveCamera: (self: CameraProfiler) -> string,

	Camera: CameraModule
}

return {}