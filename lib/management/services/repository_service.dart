import 'package:components/api/bsl_api.dart';
import 'package:components/api/service/activity_service.dart';
import 'package:components/api/service/album_service.dart';
import 'package:components/api/service/attendance_service.dart';
import 'package:components/api/service/auth_service.dart';
import 'package:components/api/service/bill_service.dart';
import 'package:components/api/service/bosocial_service.dart';
import 'package:components/api/service/childtask_service.dart';
import 'package:components/api/service/common_service.dart';
import 'package:components/api/service/conservation_service.dart';
import 'package:components/api/service/course_service.dart';
import 'package:components/api/service/diy_service.dart';
import 'package:components/api/service/notification_service.dart';
import 'package:components/api/service/recipes_service.dart';
import 'package:components/api/service/student_service.dart';
import 'package:components/api/service/survey_service.dart';
import 'package:components/api/service/time_service.dart';
import 'package:components/api/service/todo_service.dart';
import 'package:components/api/service/week_plan_service.dart';
import 'package:components/repository/activity_repository.dart';
import 'package:components/repository/album_repository.dart';
import 'package:components/repository/attendance_repository.dart';
import 'package:components/repository/auth_repository.dart';
import 'package:components/repository/bill_repository.dart';
import 'package:components/repository/bosocial_repository.dart';
import 'package:components/repository/childtask_repository.dart';
import 'package:components/repository/common_repository.dart';
import 'package:components/repository/conservation_repository.dart';
import 'package:components/repository/course_repository.dart';
import 'package:components/repository/diy_repository.dart';
import 'package:components/repository/notification_repository.dart';
import 'package:components/repository/recipes_repository.dart';
import 'package:components/repository/student_repository.dart';
import 'package:components/repository/survey_repository.dart';
import 'package:components/repository/time_repository.dart';
import 'package:components/repository/todo_repository.dart';
import 'package:components/repository/week_plan_repository.dart';
import 'package:get/get.dart';

class RepositoryService extends GetxService {
  late final ActivityRepository activityRepository;
  late final AuthRepository authRepository;
  late final CommonRepository commonRepository;
  late final StudentRepository studentRepository;
  late final NotificationRepository notificationRepository;
  late final BoSocialRepository boSocialRepository;
  late final TodoRepository todoRepository;
  late final AlbumRepository albumRepository;
  late final ChildtaskRepository childtaskRepository;
  late final ConservationRepository conservationRepository;
  late final DiyRepository diyRepository;
  late final CourseRepository courseRepository;
  late final RecipesRepository recipesRepository;
  late final AttendanceRepository attendanceRepository;
  late final BillRepository billRepository;
  late final WeekPlanRepository weekPlanRepository;
  late final TimeRepository timeRepository;
  late final SurveyRepository surveyRepository;

  Future<RepositoryService> init() async {
    final dio = BslService.dio();
    final activityService = ActivityRemoteService(dio);
    activityRepository = ActivityRepository(activityService);

    final authService = AuthRemoteService(dio);
    authRepository = AuthRepository(authService);

    final commonService = CommonRemoteService(dio);
    commonRepository = CommonRepository(commonService);

    final studentService = StudentRemoteService(dio);
    studentRepository = StudentRepository(studentService);

    final notificationService = NotificationRemoteService(dio);
    notificationRepository = NotificationRepository(notificationService);

    final boSocialService = BoSocialRemoteService(dio);
    boSocialRepository = BoSocialRepository(boSocialService);

    final todoService = TodoRemoteService(dio);
    todoRepository = TodoRepository(todoService);

    final schoolClipService = AlbumRemoteService(dio);
    albumRepository = AlbumRepository(schoolClipService);

    final childtaskService = ChildtaskRemoteService(dio);
    childtaskRepository = ChildtaskRepository(childtaskService);

    final conservationService = ConservationRemoteService(dio);
    conservationRepository = ConservationRepository(conservationService);

    final diyService = DiyRemoteService(dio);
    diyRepository = DiyRepository(diyService);

    final courseService = CourseRemoteService(dio);
    courseRepository = CourseRepository(courseService);

    final recipesService = RecipesRemoteService(dio);
    recipesRepository = RecipesRepository(recipesService);

    final attendanceService = AttendanceRemoteService(dio);
    attendanceRepository = AttendanceRepository(attendanceService);

    final billService = BillRemoteService(dio);
    billRepository = BillRepository(billService);

    final weekPlanService = WeekPlanRemoteService(dio);
    weekPlanRepository = WeekPlanRepository(weekPlanService);

    final timeRemoteService = TimeRemoteService(dio);
    timeRepository = TimeRepository(timeRemoteService);

    final surveyRemoteService = SurveyRemoteService(dio);
    surveyRepository = SurveyRepository(surveyRemoteService);

    return this;
  }
}
