import 'package:mobile_app/enums/view_state.dart';
import 'package:mobile_app/locator.dart';
import 'package:mobile_app/models/failure_model.dart';
import 'package:mobile_app/models/ib/ib_chapter.dart';
import 'package:mobile_app/services/database_service.dart';
import 'package:mobile_app/services/ib_engine_service.dart';
import 'package:mobile_app/viewmodels/base_viewmodel.dart';

class IbLandingViewModel extends BaseModel {
  // ViewState Keys
  String IB_FETCH_CHAPTERS = 'ib_fetch_chapters';

  final IbEngineService _ibEngineService = locator<IbEngineService>();
  final DatabaseService _db = locator<DatabaseService>();

  List<IbChapter> _chapters = [];

  List<IbChapter> get chapters => _chapters;

  Future fetchChapters() async {
    try {
      var cachedChapters = await _db.getData<List<IbChapter>>(DatabaseBox.IB, 'chapters');
      if ( cachedChapters != null) {
        _chapters = cachedChapters;
      } else {
        _chapters = await _ibEngineService.getChapters();
        await _db.setData<List<IbChapter>>(DatabaseBox.IB, 'chapters', _chapters);
      }
      
      setStateFor(IB_FETCH_CHAPTERS, ViewState.Success);
    } on Failure catch (f) {
      setStateFor(IB_FETCH_CHAPTERS, ViewState.Error);
      setErrorMessageFor(IB_FETCH_CHAPTERS, f.message);
    }
  }
}
