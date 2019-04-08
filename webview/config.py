def can_build(plat):
	return plat=="android" or plat=="iphone"

def configure(env):
    # if (env['platform'] == 'android'):

	if env['platform'] == "iphone":
		env.Append(LINKFLAGS=['-ObjC'])
		env.Append(CPPPATH=['#core'])
