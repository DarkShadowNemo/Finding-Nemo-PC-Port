extends ImmediateGeometry

func _ready():
	var _f = File.new()
	_f.open("res://files/stuff/loading.gsc", File.READ)
	_f.seek(9418)
	var vertexCount = _f.get_8()
	_f.get_8()
	
	clear()
	
	begin(Mesh.PRIMITIVE_TRIANGLE_STRIP)
	
	for i_ in range(vertexCount):
		
	
		var vx = _f.get_float()
		var vy = _f.get_float()
		var vz = _f.get_float()
		var nz = _f.get_float()
	
		add_vertex(Vector3(vx,vy,vz))
		set_normal(Vector3(0,0,nz))
	_f.get_8()
	_f.get_8()
	_f.get_8()
	_f.get_8()
	_f.get_8()
	_f.get_8()
	var uvcount = _f.get_8()
	_f.get_8()
	
	for uv_ in range(uvcount):
		var uvx = _f.get_16() / 4096.0
		var uvy = _f.get_16() / 4096.0
		var uvMagicnumber = _f.get_32()
		set_uv(Vector2(uvx,uvy))
		
	_f.get_8()
	_f.get_8()
	_f.get_8()
	_f.get_8()
	_f.get_8()
	_f.get_8()
	var colcount = _f.get_8()
	_f.get_8()
		
	for c_ in range(colcount):
		var rv = _f.get_8()
		var gv = _f.get_8()
		var bv = _f.get_8()
		var av = _f.get_8()
		set_color(Color8(rv,gv,bv,av))
		
	
	end()
	
	_f.close()
