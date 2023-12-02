import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/card_add/card_add_widget.dart';
import '/components/user_account/user_account_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'payment_info_model.dart';
export 'payment_info_model.dart';

class PaymentInfoWidget extends StatefulWidget {
  const PaymentInfoWidget({super.key});

  @override
  _PaymentInfoWidgetState createState() => _PaymentInfoWidgetState();
}

class _PaymentInfoWidgetState extends State<PaymentInfoWidget>
    with TickerProviderStateMixin {
  late PaymentInfoModel _model;

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
    _model = createModel(context, () => PaymentInfoModel());

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

    return Container(
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
                          'MEUS CARTÕES',
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
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
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
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: const CardAddWidget(),
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
                                'Adicionar Cartão',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                        FutureBuilder<List<UserCreditCardRow>>(
                          future: (_model.requestCompleter ??=
                                  Completer<List<UserCreditCardRow>>()
                                    ..complete(UserCreditCardTable().queryRows(
                                      queryFn: (q) => q.eq(
                                        'user_id',
                                        currentUserUid,
                                      ),
                                    )))
                              .future,
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
                            List<UserCreditCardRow>
                                listViewUserCreditCardRowList = snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewUserCreditCardRowList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewUserCreditCardRow =
                                    listViewUserCreditCardRowList[
                                        listViewIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      4.0, 4.0, 4.0, 4.0),
                                  child: Container(
                                    width: 288.0,
                                    height: 244.0,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 6.0,
                                          color: Color(0x4B1A1F24),
                                          offset: Offset(0.0, 2.0),
                                        )
                                      ],
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFFEE8B60),
                                          Color(0xAE4B39EF)
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: AlignmentDirectional(0.94, -1.0),
                                        end: AlignmentDirectional(-0.94, 1.0),
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          FutureBuilder<
                                              List<UserCreditCardDefautRow>>(
                                            future: UserCreditCardDefautTable()
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
                                              List<UserCreditCardDefautRow>
                                                  rowUserCreditCardDefautRowList =
                                                  snapshot.data!;
                                              final rowUserCreditCardDefautRow =
                                                  rowUserCreditCardDefautRowList
                                                          .isNotEmpty
                                                      ? rowUserCreditCardDefautRowList
                                                          .first
                                                      : null;
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
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
                                                              listViewUserCreditCardRow] ??=
                                                          rowUserCreditCardDefautRow!
                                                              .defaut!,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() => _model
                                                                    .checkboxValueMap[
                                                                listViewUserCreditCardRow] =
                                                            newValue!);
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
                                                    'Padrão',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            1.00, -1.00),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          const Color(0x004B39EF),
                                                      borderRadius: 20.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          const Color(0x004B39EF),
                                                      icon: const Icon(
                                                        Icons.delete_sharp,
                                                        color:
                                                            Color(0xFF0E0000),
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () async {
                                                        await UserCreditCardTable()
                                                            .delete(
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'id',
                                                            listViewUserCreditCardRow
                                                                .id,
                                                          ),
                                                        );
                                                        setState(() => _model
                                                                .requestCompleter =
                                                            null);
                                                        await _model
                                                            .waitForRequestCompleted();
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                          Image.network(
                                            'https://cqsmjfypoovihwdkrbbu.supabase.co/storage/v1/object/sign/Photos/Outros/visa_mastercard.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJQaG90b3MvT3V0cm9zL3Zpc2FfbWFzdGVyY2FyZC5wbmciLCJpYXQiOjE3MDE1NDIwOTMsImV4cCI6NDgyMzYwNjA5M30.JYbNgoe-TYhTmnraY4M7YBhURAJmdjrMAKgycVn_hJo&t=2023-12-02T18%3A34%3A52.740Z',
                                            width: 164.0,
                                            height: 48.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              listViewUserCreditCardRow.name,
                                              'null',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 32.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 4.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  formatNumber(
                                                    listViewUserCreditCardRow
                                                        .cardNumber!,
                                                    formatType:
                                                        FormatType.custom,
                                                    format:
                                                        '#### #### #### ####',
                                                    locale: 'pt_br',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Mono',
                                                        color: Colors.white,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    listViewUserCreditCardRow
                                                        .validation,
                                                    'NULL',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Mono',
                                                        color: Colors.white,
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Salvar Alterações',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF0EE8CE),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Color(0xA90E0000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            hoverBorderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
        ],
      ),
    );
  }
}
