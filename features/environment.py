import logging

def before_all(context):
    context.logger = logging.getLogger('behave')
    handler = logging.FileHandler('logs/execution.log', mode='w')
    formatter = logging.Formatter('%(asctime)s %(levelname)s: %(message)s')
    handler.setFormatter(formatter)
    context.logger.addHandler(handler)
    context.logger.setLevel(logging.INFO)
    context.logger.log(logging.INFO,"started logger successfully..")