import json
from flask              import Blueprint, Response, request

from gunpla_api.config  import Config
from gunpla_api.logger  import Logger

# from gunpla_api.utils   import Utils
from gunpla_api.controller  import Controller
from gunpla_api.validation  import Validation
from gunpla_api.exceptions  import BadRequestException, DatabaseException, DatabaseUniqueException


logger =  Logger().get_logger()
public =  Blueprint(
  'public',
  __name__,
  url_prefix='/api/public',
)

CONFIG =  Config()
CONTROLLER =  Controller()
VALIDATION =  Validation()


@public.route('/lifecheck',  methods=['GET'])
@public.route('/lifecheck/', methods=['GET', 'POST'])
def lifecheck():
  # MAIN_CONTROLLER.handle_auth(app.current_request)
  # print('request json: ', request.json)
  app_name     =  CONFIG.app_name
  logging_json =  { 'app_name': app_name }
  logger.info(logging_json)
    # if multiple qs for 'search'- params = request.args.getlist('search')
    # have request as dict = request.args.to_dict()
  return Response(
    response =  json.dumps({
      'appName' :  app_name,
      'stage'   :  CONFIG.stage,
      'path'    :  '/public/lifecheck',
      'status'  :  200,
    })
  )

@public.route('/select/<table>',  methods=['GET'])
@public.route('/select/<table>/', methods=['GET'])
def db_get_route(table):

  try:
    logger.info(f'request received - insert to table: {table}')
    if table == 'timeline':
      results = CONTROLLER.get_timelines()

    response =  Response(status=200, response=json.dumps({
      'message' :  'success',
      'length'  :  len(results),
      'results' :  results,
    }))
  except Exception as e:
    logger.exception('unknown error occured')
    response = Response(status=400, response=json.dumps({'message': 'error'}))

  logger.info('request complete')
  return response