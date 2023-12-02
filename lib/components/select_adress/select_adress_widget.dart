import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/adress_add/adress_add_widget.dart';
import '/components/user_account/user_account_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'select_adress_model.dart';
export 'select_adress_model.dart';

class SelectAdressWidget extends StatefulWidget {
  const SelectAdressWidget({super.key});

  @override
  _SelectAdressWidgetState createState() => _SelectAdressWidgetState();
}

class _SelectAdressWidgetState extends State<SelectAdressWidget>
    with TickerProviderStateMixin {
  late SelectAdressModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: const Offset(0.0, 100.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectAdressModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        Navigator.pop(context);
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).accent4,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 2.0, 16.0, 16.0),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(
                  maxWidth: 670.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 12.0,
                      color: Color(0x1E000000),
                      offset: Offset(0.0, 5.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'Meus Endereços',
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.00, -1.00),
                          child: FlutterFlowIconButton(
                            borderColor: const Color(0x004B39EF),
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: const Color(0x004B39EF),
                            icon: const Icon(
                              Icons.close,
                              color: Color(0xFFF70404),
                              size: 15.0,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                useSafeArea: true,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const UserAccountWidget(),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                useSafeArea: true,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const AdressAddWidget(),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: FlutterFlowIconButton(
                                    borderColor: const Color(0x004B39EF),
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor: const Color(0x004B39EF),
                                    icon: Icon(
                                      Icons.add_location_alt,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 15.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ),
                                VerticalDivider(
                                  width: 1.0,
                                  thickness: 1.0,
                                  color: FlutterFlowTheme.of(context).accent4,
                                ),
                                Text(
                                  'Adicionar Endereço',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          FutureBuilder<List<UserAdressRow>>(
                            future: UserAdressTable().queryRows(
                              queryFn: (q) => q.eq(
                                'user_id',
                                currentUserUid,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<UserAdressRow> listViewUserAdressRowList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewUserAdressRowList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewUserAdressRow =
                                      listViewUserAdressRowList[listViewIndex];
                                  return Container(
                                    width: 130.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      border: Border.all(
                                        color: const Color(0xFF0E0000),
                                      ),
                                    ),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await UserAdressDefautTable().update(
                                          data: {
                                            'created_at':
                                                supaSerialize<DateTime>(
                                                    getCurrentTimestamp),
                                            'adress_id':
                                                listViewUserAdressRow.id,
                                            'cep': listViewUserAdressRow.cep,
                                            'name': listViewUserAdressRow.name,
                                            'neighborhood':
                                                listViewUserAdressRow
                                                    .neighborhood,
                                            'number':
                                                listViewUserAdressRow.number,
                                            'city': listViewUserAdressRow.city,
                                            'reference': listViewUserAdressRow
                                                .referenceField,
                                            'defaut': true,
                                          },
                                          matchingRows: (rows) => rows.eq(
                                            'id',
                                            currentUserUid,
                                          ),
                                        );
                                        Navigator.pop(context);
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Icon(
                                            Icons.location_on_sharp,
                                            color: Color(0xFF1409AD),
                                            size: 44.0,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    listViewUserAdressRow.name,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  VerticalDivider(
                                                    width: 5.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                  ),
                                                  Text(
                                                    listViewUserAdressRow
                                                        .number,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    listViewUserAdressRow
                                                        .neighborhood,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  VerticalDivider(
                                                    width: 5.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                  ),
                                                  Text(
                                                    listViewUserAdressRow.city,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  VerticalDivider(
                                                    width: 5.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                  ),
                                                  Text(
                                                    listViewUserAdressRow.cep,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent4,
                                              ),
                                              FutureBuilder<
                                                  List<UserAdressDefautRow>>(
                                                future: UserAdressDefautTable()
                                                    .querySingleRow(
                                                  queryFn: (q) => q.eq(
                                                    'id',
                                                    currentUserUid,
                                                  ),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<UserAdressDefautRow>
                                                      columnUserAdressDefautRowList =
                                                      snapshot.data!;
                                                  final columnUserAdressDefautRow =
                                                      columnUserAdressDefautRowList
                                                              .isNotEmpty
                                                          ? columnUserAdressDefautRowList
                                                              .first
                                                          : null;
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Theme(
                                                            data: ThemeData(
                                                              checkboxTheme:
                                                                  CheckboxThemeData(
                                                                visualDensity:
                                                                    VisualDensity
                                                                        .compact,
                                                                materialTapTargetSize:
                                                                    MaterialTapTargetSize
                                                                        .shrinkWrap,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                              ),
                                                              unselectedWidgetColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                            ),
                                                            child: Checkbox(
                                                              value: _model
                                                                          .checkboxValueMap[
                                                                      listViewUserAdressRow] ??=
                                                                  columnUserAdressDefautRow!
                                                                      .defaut,
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    _model.checkboxValueMap[
                                                                            listViewUserAdressRow] =
                                                                        newValue!);
                                                                if (newValue!) {
                                                                  await UserAdressDefautTable()
                                                                      .update(
                                                                    data: {
                                                                      'created_at':
                                                                          supaSerialize<DateTime>(
                                                                              getCurrentTimestamp),
                                                                      'cep': listViewUserAdressRow
                                                                          .cep,
                                                                      'name': listViewUserAdressRow
                                                                          .name,
                                                                      'neighborhood':
                                                                          listViewUserAdressRow
                                                                              .neighborhood,
                                                                      'number':
                                                                          listViewUserAdressRow
                                                                              .number,
                                                                      'city': listViewUserAdressRow
                                                                          .city,
                                                                      'reference':
                                                                          listViewUserAdressRow
                                                                              .referenceField,
                                                                      'defaut': _model.checkboxValueMap[listViewUserAdressRow] ==
                                                                              true
                                                                          ? true
                                                                          : false,
                                                                    },
                                                                    matchingRows:
                                                                        (rows) =>
                                                                            rows.eq(
                                                                      'id',
                                                                      currentUserUid,
                                                                    ),
                                                                  );
                                                                }
                                                              },
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              checkColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Endereço Padrão',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        const Color(0x004B39EF),
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        const Color(0x004B39EF),
                                                    icon: const Icon(
                                                      Icons.delete,
                                                      color: Color(0xC5F01919),
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () async {
                                                      var confirmDialogResponse =
                                                          await showDialog<
                                                                  bool>(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    content: const Text(
                                                                        'Deseja excluir este endereço?'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            false),
                                                                        child: const Text(
                                                                            'Não'),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(
                                                                            alertDialogContext,
                                                                            true),
                                                                        child: const Text(
                                                                            'Sim'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              ) ??
                                                              false;
                                                      if (confirmDialogResponse) {
                                                        await UserAdressTable()
                                                            .delete(
                                                          matchingRows:
                                                              (rows) => rows
                                                                  .eq(
                                                                    'user_id',
                                                                    currentUserUid,
                                                                  )
                                                                  .eq(
                                                                    'id',
                                                                    listViewUserAdressRow
                                                                        .id,
                                                                  ),
                                                        );
                                                      } else {
                                                        return;
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ]
                            .divide(const SizedBox(height: 12.0))
                            .addToEnd(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ],
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            ),
          ],
        ),
      ),
    );
  }
}
