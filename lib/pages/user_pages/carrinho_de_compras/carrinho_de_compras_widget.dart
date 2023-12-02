import '/auth/supabase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/components/payment_info2/payment_info2_widget.dart';
import '/components/select_adress/select_adress_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'carrinho_de_compras_model.dart';
export 'carrinho_de_compras_model.dart';

class CarrinhoDeComprasWidget extends StatefulWidget {
  const CarrinhoDeComprasWidget({super.key});

  @override
  _CarrinhoDeComprasWidgetState createState() =>
      _CarrinhoDeComprasWidgetState();
}

class _CarrinhoDeComprasWidgetState extends State<CarrinhoDeComprasWidget>
    with TickerProviderStateMixin {
  late CarrinhoDeComprasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
  void initState() {
    super.initState();
    _model = createModel(context, () => CarrinhoDeComprasModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: const AlignmentDirectional(-1.00, -1.00),
            child: FlutterFlowIconButton(
              borderColor: const Color(0x004B39EF),
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0x004B39EF),
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFFF70404),
                size: 24.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(-1.00, 0.00),
            child: Text(
              'CARRINHO',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: const Color(0xFFF8F4F4),
                    fontSize: 23.0,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
            ),
          ),
          actions: const [],
          flexibleSpace: FlexibleSpaceBar(
            background: Opacity(
              opacity: 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/coffe_5.webp',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x25090F13),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.0,
                                height: 4.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.00, 0.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                'RESUMO DO PEDIDO',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: const Color(0xFF14181B),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 8.0),
                            child: Text(
                              'Revise seu pedido abaixo antes de finalizar a compra.',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF57636C),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          const Divider(
                            height: 24.0,
                            thickness: 2.0,
                            color: Color(0xFFE0E3E7),
                          ),
                          FutureBuilder<List<ShpoCartRow>>(
                            future: (_model.requestCompleter ??=
                                    Completer<List<ShpoCartRow>>()
                                      ..complete(ShpoCartTable().queryRows(
                                        queryFn: (q) => q
                                            .eq(
                                              'user_id',
                                              currentUserUid,
                                            )
                                            .order('name', ascending: true),
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
                              List<ShpoCartRow> listView1ShpoCartRowList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listView1ShpoCartRowList.length,
                                itemBuilder: (context, listView1Index) {
                                  final listView1ShpoCartRow =
                                      listView1ShpoCartRowList[listView1Index];
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 109.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFFE0E3E7),
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 8.0, 12.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                listView1ShpoCartRow.photoUrl!,
                                                width: 59.0,
                                                height: 59.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      listView1ShpoCartRow
                                                          .name!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: const Color(
                                                                    0xFF14181B),
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          listView1ShpoCartRow
                                                              .description!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Plus Jakarta Sans',
                                                                color: const Color(
                                                                    0xFF57636C),
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.00, 0.00),
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
                                                          Icons.arrow_drop_down,
                                                          color:
                                                              Color(0xFFC00404),
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () async {
                                                          unawaited(
                                                            () async {
                                                              await ShpoCartTable()
                                                                  .update(
                                                                data: {
                                                                  'select_qtd':
                                                                      listView1ShpoCartRow
                                                                              .selectQtd! -
                                                                          1,
                                                                  'total_price': (listView1ShpoCartRow
                                                                              .selectQtd! -
                                                                          1) *
                                                                      listView1ShpoCartRow
                                                                          .price!,
                                                                },
                                                                matchingRows:
                                                                    (rows) =>
                                                                        rows
                                                                            .eq(
                                                                              'user_id',
                                                                              currentUserUid,
                                                                            )
                                                                            .eq(
                                                                              'id',
                                                                              listView1ShpoCartRow.id,
                                                                            )
                                                                            .eq(
                                                                              'product_id',
                                                                              listView1ShpoCartRow.productId,
                                                                            ),
                                                              );
                                                            }(),
                                                          );
                                                          setState(() => _model
                                                                  .requestCompleter =
                                                              null);
                                                          await _model
                                                              .waitForRequestCompleted();
                                                          setState(() {
                                                            FFAppState().soma =
                                                                FFAppState()
                                                                        .soma +
                                                                    -listView1ShpoCartRow
                                                                        .price!;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                    Text(
                                                      listView1ShpoCartRow
                                                          .selectQtd!
                                                          .toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.00, 0.00),
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
                                                          Icons.arrow_drop_up,
                                                          color:
                                                              Color(0xFF0E01A2),
                                                          size: 30.0,
                                                        ),
                                                        onPressed: () async {
                                                          unawaited(
                                                            () async {
                                                              await ShpoCartTable()
                                                                  .update(
                                                                data: {
                                                                  'select_qtd':
                                                                      listView1ShpoCartRow
                                                                              .selectQtd! +
                                                                          1,
                                                                  'total_price': (listView1ShpoCartRow
                                                                              .selectQtd! +
                                                                          1) *
                                                                      listView1ShpoCartRow
                                                                          .price!,
                                                                },
                                                                matchingRows:
                                                                    (rows) =>
                                                                        rows
                                                                            .eq(
                                                                              'user_id',
                                                                              currentUserUid,
                                                                            )
                                                                            .eq(
                                                                              'id',
                                                                              listView1ShpoCartRow.id,
                                                                            )
                                                                            .eq(
                                                                              'product_id',
                                                                              listView1ShpoCartRow.productId,
                                                                            ),
                                                              );
                                                            }(),
                                                          );
                                                          setState(() => _model
                                                                  .requestCompleter =
                                                              null);
                                                          await _model
                                                              .waitForRequestCompleted();
                                                          setState(() {
                                                            FFAppState().soma =
                                                                FFAppState()
                                                                        .soma +
                                                                    listView1ShpoCartRow
                                                                        .price!;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  formatNumber(
                                                    listView1ShpoCartRow
                                                        .totalPrice!,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: 'R\$ ',
                                                    format: '###.##',
                                                    locale: 'pt_br',
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            const Color(0xFF14181B),
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ],
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
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.00, 0.00),
                            child: FlutterFlowChoiceChips(
                              options: const [
                                ChipData('Retirada', Icons.shopping_bag_sharp),
                                ChipData('Entrega', FontAwesomeIcons.motorcycle)
                              ],
                              onChanged: (val) => setState(
                                  () => _model.choiceChipsValue = val?.first),
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                iconColor: const Color(0xFF0E0000),
                                iconSize: 19.0,
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                iconSize: 18.0,
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              chipSpacing: 12.0,
                              rowSpacing: 12.0,
                              multiselect: false,
                              alignment: WrapAlignment.start,
                              controller: _model.choiceChipsValueController ??=
                                  FormFieldController<List<String>>(
                                [],
                              ),
                              wrapped: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                    if (_model.choiceChipsValue == 'Entrega')
                      FutureBuilder<List<UserAdressDefautRow>>(
                        future: UserAdressDefautTable().querySingleRow(
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
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<UserAdressDefautRow>
                              containerUserAdressDefautRowList = snapshot.data!;
                          final containerUserAdressDefautRow =
                              containerUserAdressDefautRowList.isNotEmpty
                                  ? containerUserAdressDefautRowList.first
                                  : null;
                          return Container(
                            width: 365.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Icon(
                                  Icons.location_on_sharp,
                                  color: Color(0xFF1409AD),
                                  size: 50.0,
                                ),
                                SizedBox(
                                  height: 100.0,
                                  child: VerticalDivider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).accent4,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            containerUserAdressDefautRow?.name,
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        VerticalDivider(
                                          width: 5.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            containerUserAdressDefautRow
                                                ?.number,
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            containerUserAdressDefautRow
                                                ?.neighborhood,
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        VerticalDivider(
                                          width: 5.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            containerUserAdressDefautRow?.city,
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        VerticalDivider(
                                          width: 5.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                        Text(
                                          valueOrDefault<String>(
                                            containerUserAdressDefautRow?.cep,
                                            'null',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(1.00, 0.00),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                1.00, -1.00),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  useSafeArea: true,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const SelectAdressWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: Icon(
                                                Icons.change_circle,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).accent4,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 2.0, 16.0, 16.0),
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
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 4.0, 24.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Valor',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: const Color(0xFF57636C),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                      Text(
                                        formatNumber(
                                          FFAppState().soma,
                                          formatType: FormatType.custom,
                                          format: '###.##',
                                          locale: '',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: const Color(0xFF14181B),
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (_model.choiceChipsValue == 'Entrega')
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 4.0, 24.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Taxa de Entrega',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF57636C),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          formatNumber(
                                            FFAppConstants.TAXA,
                                            formatType: FormatType.custom,
                                            currency: 'R\$ ',
                                            format: '###.##',
                                            locale: 'pt_br',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: const Color(0xFF14181B),
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 4.0, 24.0, 24.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Total',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: const Color(0xFF57636C),
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 36.0,
                                            icon: const Icon(
                                              Icons.info_outlined,
                                              color: Color(0xFF57636C),
                                              size: 18.0,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                      Text(
                                        _model.choiceChipsValue == 'Entrega'
                                            ? formatNumber(
                                                FFAppState().soma +
                                                    FFAppConstants.TAXA,
                                                formatType: FormatType.custom,
                                                currency: 'R\$ ',
                                                format: '###.##',
                                                locale: 'PT_BR',
                                              )
                                            : formatNumber(
                                                FFAppState().soma,
                                                formatType: FormatType.custom,
                                                currency: 'R\$ ',
                                                format: '###.##',
                                                locale: 'pt_br',
                                              ),
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: const Color(0xFF14181B),
                                              fontSize: 36.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                  child: FutureBuilder<List<UserCreditCardDefautRow>>(
                    future: UserCreditCardDefautTable().querySingleRow(
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
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<UserCreditCardDefautRow>
                          creditCardUserCreditCardDefautRowList =
                          snapshot.data!;
                      final creditCardUserCreditCardDefautRow =
                          creditCardUserCreditCardDefautRowList.isNotEmpty
                              ? creditCardUserCreditCardDefautRowList.first
                              : null;
                      return Container(
                        width: 367.0,
                        height: 205.0,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Color(0x4B1A1F24),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          gradient: const LinearGradient(
                            colors: [Color(0xFFEE8B60), Color(0xAE4B39EF)],
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(1.00, -1.00),
                                child: FlutterFlowIconButton(
                                  borderColor: const Color(0x004B39EF),
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor: const Color(0x004B39EF),
                                  icon: const Icon(
                                    Icons.change_circle,
                                    color: Color(0xFF0E0000),
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const PaymentInfo2Widget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                ),
                              ),
                              Image.network(
                                'https://cqsmjfypoovihwdkrbbu.supabase.co/storage/v1/object/sign/Photos/Outros/visa_mastercard.png?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJQaG90b3MvT3V0cm9zL3Zpc2FfbWFzdGVyY2FyZC5wbmciLCJpYXQiOjE3MDE1NDIwOTMsImV4cCI6NDgyMzYwNjA5M30.JYbNgoe-TYhTmnraY4M7YBhURAJmdjrMAKgycVn_hJo&t=2023-12-02T18%3A34%3A52.740Z',
                                width: 164.0,
                                height: 48.0,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                valueOrDefault<String>(
                                  creditCardUserCreditCardDefautRow?.name,
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
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 4.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        creditCardUserCreditCardDefautRow
                                            ?.cardNumber
                                            ?.toString(),
                                        'null',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto Mono',
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    Text(
                                      valueOrDefault<String>(
                                        creditCardUserCreditCardDefautRow
                                            ?.validation,
                                        'null',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto Mono',
                                            color: Colors.white,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 9.0, 16.0, 24.0),
                  child: StreamBuilder<List<CartRecord>>(
                    stream: queryCartRecord(
                      queryBuilder: (cartRecord) => cartRecord.where(
                        'user_id',
                        isEqualTo: currentUserUid,
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
                      List<CartRecord> buttonCartRecordList = snapshot.data!;
                      return FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Finalizar',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF39D2C0),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          elevation: 2.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
