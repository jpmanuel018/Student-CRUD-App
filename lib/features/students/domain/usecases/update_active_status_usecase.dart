import 'package:student_crud_app/core/resources/data_state.dart';
import 'package:student_crud_app/core/usecase/usecase.dart';
import 'package:student_crud_app/features/students/domain/entities/update_active_status_request.dart';
import 'package:student_crud_app/features/students/domain/repository/student_repository.dart';

class UpdateActiveStatusUseCase implements UseCase<DataState<void>, UpdateActiveStatusRequest?> {

  final StudentRepository _studentRepository;

  UpdateActiveStatusUseCase(this._studentRepository);

  @override
  Future<DataState<void>> call({UpdateActiveStatusRequest? params}) {
    return _studentRepository.updateActiveStatus(params?.id, params?.isActive);
  }

}