def define_env(env):
  "Hook function"
  
  @env.macro
  def microbit_simulator(solution_id):
    return """\
<div style="position:relative;height:0;padding-bottom:81.97%;overflow:hidden;"><iframe style="position:absolute;top:0;left:0;width:100%;height:100%;" src="{microbit_url}/---run?id={microbit_id}" allowfullscreen="allowfullscreen" sandbox="allow-popups allow-forms allow-scripts allow-same-origin" frameborder="0"></iframe></div>
""".format(microbit_url=env.variables.microbit_url, microbit_id=env.variables.solutions[solution_id])

  @env.macro
  def microbit_code(solution_id):
    return """\
<div style="position:relative;height:0;padding-bottom:70%;overflow:hidden;"><iframe style="position:absolute;top:0;left:0;width:100%;height:100%;" src="{microbit_url}/#pub:{microbit_id}" frameborder="0" sandbox="allow-popups allow-forms allow-scripts allow-same-origin"></iframe></div>
""".format(microbit_url=env.variables.microbit_url, microbit_id=env.variables.solutions[solution_id])

  @env.macro
  def test_solution(solution_id):
    return "Test_solution: {var}".format(var=env.variables.solutions[solution_id])
