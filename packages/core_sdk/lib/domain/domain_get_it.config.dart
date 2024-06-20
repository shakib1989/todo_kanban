// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_sdk/data/database/daos/comment_dao.dart' as _i3;
import 'package:core_sdk/data/database/daos/impl/comment_dao_impl.dart' as _i4;
import 'package:core_sdk/data/database/daos/impl/project_dao_impl.dart' as _i8;
import 'package:core_sdk/data/database/daos/impl/section_dao_impl.dart' as _i18;
import 'package:core_sdk/data/database/daos/impl/task_dao_impl.dart' as _i24;
import 'package:core_sdk/data/database/daos/project_dao.dart' as _i7;
import 'package:core_sdk/data/database/daos/section_dao.dart' as _i17;
import 'package:core_sdk/data/database/daos/task_dao.dart' as _i23;
import 'package:core_sdk/data/networks/todo_network_impl.dart' as _i29;
import 'package:core_sdk/data/repositories/comment_repository_impl.dart' as _i6;
import 'package:core_sdk/data/repositories/project_repository_impl.dart'
    as _i10;
import 'package:core_sdk/data/repositories/section_repository_impl.dart'
    as _i20;
import 'package:core_sdk/data/repositories/task_repository_impl.dart' as _i26;
import 'package:core_sdk/domain/network/todo_network.dart' as _i28;
import 'package:core_sdk/domain/repositories/comment_repository.dart' as _i5;
import 'package:core_sdk/domain/repositories/project_repository.dart' as _i9;
import 'package:core_sdk/domain/repositories/section_repository.dart' as _i19;
import 'package:core_sdk/domain/repositories/task_repository.dart' as _i25;
import 'package:core_sdk/domain/use_cases/comments/refresh_comments_use_case.dart'
    as _i13;
import 'package:core_sdk/domain/use_cases/comments/task_comments_stream_use_case.dart'
    as _i22;
import 'package:core_sdk/domain/use_cases/projects/projects_stream_use_case.dart'
    as _i12;
import 'package:core_sdk/domain/use_cases/projects/refresh_projects_use_case.dart'
    as _i14;
import 'package:core_sdk/domain/use_cases/sections/project_sections_stream_use_case.dart'
    as _i11;
import 'package:core_sdk/domain/use_cases/sections/refresh_sections_use_case.dart'
    as _i15;
import 'package:core_sdk/domain/use_cases/tasks/refresh_tasks_use_case.dart'
    as _i16;
import 'package:core_sdk/domain/use_cases/tasks/section_tasks_stream_use_case.dart'
    as _i21;
import 'package:core_sdk/domain/use_cases/tasks/task_update_use_case.dart'
    as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.CommentDao>(() => _i4.CommentDaoImpl());
    gh.singleton<_i5.CommentRepository>(() => _i6.CommentRepositoryImpl());
    gh.singleton<_i7.ProjectDao>(() => _i8.ProjectDaoImpl());
    gh.singleton<_i9.ProjectRepository>(() => _i10.ProjectRepositoryImpl());
    gh.singleton<_i11.ProjectSectionStreamUseCase>(
        () => _i11.ProjectSectionStreamUseCase());
    gh.singleton<_i12.ProjectStreamUseCase>(() => _i12.ProjectStreamUseCase());
    gh.singleton<_i13.RefreshCommentsUseCase>(
        () => _i13.RefreshCommentsUseCase());
    gh.singleton<_i14.RefreshProjectUseCase>(
        () => _i14.RefreshProjectUseCase());
    gh.singleton<_i15.RefreshSectionUseCase>(
        () => _i15.RefreshSectionUseCase());
    gh.singleton<_i16.RefreshTasksUseCase>(() => _i16.RefreshTasksUseCase());
    gh.singleton<_i17.SectionDao>(() => _i18.SectionDaoImpl());
    gh.singleton<_i19.SectionRepository>(() => _i20.SectionRepositoryImpl());
    gh.singleton<_i21.SectionTaskStreamUseCase>(
        () => _i21.SectionTaskStreamUseCase());
    gh.singleton<_i22.TaskCommentsStreamUseCase>(
        () => _i22.TaskCommentsStreamUseCase());
    gh.singleton<_i23.TaskDao>(() => _i24.TaskDaoImpl());
    gh.singleton<_i25.TaskRepository>(() => _i26.TaskRepositoryImpl());
    gh.singleton<_i27.TaskUpdateUseCase>(() => _i27.TaskUpdateUseCase());
    gh.singleton<_i28.TodoNetwork>(() => _i29.TodoNetworkImpl());
    return this;
  }
}
