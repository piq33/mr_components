import 'package:bsl/api/bsl_api.dart';
import 'package:bsl/api/service/activity_service.dart';
import 'package:bsl/api/service/album_service.dart';
import 'package:bsl/api/service/attendance_service.dart';
import 'package:bsl/api/service/auth_service.dart';
import 'package:bsl/api/service/bill_service.dart';
import 'package:bsl/api/service/bosocial_service.dart';
import 'package:bsl/api/service/conservation_service.dart';
import 'package:bsl/api/service/childtask_service.dart';
import 'package:bsl/api/service/common_service.dart';
import 'package:bsl/api/service/course_service.dart';
import 'package:bsl/api/service/diy_service.dart';
import 'package:bsl/api/service/notification_service.dart';
import 'package:bsl/api/service/recipes_service.dart';
import 'package:bsl/api/service/student_service.dart';
import 'package:bsl/api/service/survey_service.dart';
import 'package:bsl/api/service/time_service.dart';
import 'package:bsl/api/service/todo_service.dart';
import 'package:bsl/api/service/week_plan_service.dart';
import 'package:bsl/repository/activity_repository.dart';
import 'package:bsl/repository/album_repository.dart';
import 'package:bsl/repository/attendance_repository.dart';
import 'package:bsl/repository/auth_repository.dart';
import 'package:bsl/repository/bill_repository.dart';
import 'package:bsl/repository/bosocial_repository.dart';
import 'package:bsl/repository/conservation_repository.dart';
import 'package:bsl/repository/childtask_repository.dart';
import 'package:bsl/repository/common_repository.dart';
import 'package:bsl/repository/course_repository.dart';
import 'package:bsl/repository/diy_repository.dart';
import 'package:bsl/repository/notification_repository.dart';
import 'package:bsl/repository/recipes_repository.dart';
import 'package:bsl/repository/student_repository.dart';
import 'package:bsl/repository/survey_repository.dart';
import 'package:bsl/repository/time_repository.dart';
import 'package:bsl/repository/todo_repository.dart';
import 'package:bsl/repository/week_plan_repository.dart';
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
