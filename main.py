def define_env(env):

  @env.macro
  def microbit_simulator(solution_id):
    "Generate microbit simulator for solution id"
    return """\
<button class="md-button" onclick="document.getElementById('{solution_id}').contentWindow.location.reload();">:material-reload:</button>
<div style="position:relative;height:0;padding-bottom:81.97%;overflow:hidden;"><iframe id="{solution_id}" style="position:absolute;top:0;left:0;width:100%;height:100%;" src="{microbit_url}/---run?id={microbit_id}" allowfullscreen="allowfullscreen" sandbox="allow-popups allow-forms allow-scripts allow-same-origin" frameborder="0"></iframe></div>
""".format(microbit_url=env.variables.microbit_url, microbit_id=env.variables.solutions[solution_id], solution_id=solution_id)

  @env.macro
  def microbit_code(solution_id):
    "Generate microbit code for solution id"
    return """\
<div style="position:relative;height:0;padding-bottom:70%;overflow:hidden;"><iframe style="position:absolute;top:0;left:0;width:100%;height:100%;" src="{microbit_url}/#pub:{microbit_id}" frameborder="0" sandbox="allow-popups allow-forms allow-scripts allow-same-origin"></iframe></div>
""".format(microbit_url=env.variables.microbit_url, microbit_id=env.variables.solutions[solution_id])

  @env.macro
  def microbit_snippet(solution_id, comment=""):
    "Generate a snippet for the microbit"
    return f"""\
{microbit_simulator(solution_id)}

??? Řešení
\t{comment}
\t{microbit_code(solution_id)}"""


  @env.macro
  def test_solution(solution_id):
    "Test colution varable"
    return "Test_solution: {var}".format(var=env.variables.solutions[solution_id])
