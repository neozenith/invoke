from invoke import task, Context

@task
def typed_task(c: Context, starsign: str = "scorpio"):
    print("My type is ", starsign)
