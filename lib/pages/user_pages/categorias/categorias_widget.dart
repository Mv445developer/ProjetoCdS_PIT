import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/user_account/user_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'categorias_model.dart';
export 'categorias_model.dart';

class CategoriasWidget extends StatefulWidget {
  const CategoriasWidget({super.key});

  @override
  _CategoriasWidgetState createState() => _CategoriasWidgetState();
}

class _CategoriasWidgetState extends State<CategoriasWidget>
    with TickerProviderStateMixin {
  late CategoriasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriasModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
          iconTheme: const IconThemeData(color: Color(0xFFF70404)),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: const AlignmentDirectional(-1.00, 0.00),
            child: Text(
              'CATEGORIAS',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: const Color(0xFFF8F4F4),
                    fontSize: 23.0,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
            ),
          ),
          actions: [
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                child: FlutterFlowIconButton(
                  borderColor: const Color(0x034B39EF),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: const Color(0x004B39EF),
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Carrinho_de_compras');
                  },
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                child: FlutterFlowIconButton(
                  borderColor: const Color(0x004B39EF),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: const Color(0x004B39EF),
                  icon: const Icon(
                    Icons.person,
                    color: Color(0xFFF8F4F4),
                    size: 30.0,
                  ),
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      useSafeArea: true,
                      context: context,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => _model.unfocusNode.canRequestFocus
                              ? FocusScope.of(context)
                                  .requestFocus(_model.unfocusNode)
                              : FocusScope.of(context).unfocus(),
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: const UserAccountWidget(),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                ),
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Opacity(
              opacity: 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/coffe_4.webp',
                  fit: BoxFit.cover,
                  alignment: const Alignment(0.00, 0.00),
                ),
              ),
            ),
          ),
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Align(
                alignment: const Alignment(0.0, 0),
                child: TabBar(
                  isScrollable: true,
                  labelColor: FlutterFlowTheme.of(context).primaryText,
                  unselectedLabelColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  labelPadding:
                      const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                  labelStyle: FlutterFlowTheme.of(context).titleMedium,
                  unselectedLabelStyle: const TextStyle(),
                  indicatorColor: FlutterFlowTheme.of(context).primary,
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                  tabs: const [
                    Tab(
                      text: 'Bebidas Quentes',
                    ),
                    Tab(
                      text: 'Bebidas Geladas',
                    ),
                    Tab(
                      text: 'Cafés Especiais',
                    ),
                    Tab(
                      text: 'Doces e Lanches',
                    ),
                  ],
                  controller: _model.tabBarController,
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _model.tabBarController,
                  children: [
                    FutureBuilder<List<ProductsRow>>(
                      future: ProductsTable().queryRows(
                        queryFn: (q) => q.eq(
                          'category',
                          'Bebidas Quentes',
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
                        List<ProductsRow> listViewProductsRowList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewProductsRowList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewProductsRow =
                                listViewProductsRowList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await ProductInfoTable().update(
                                  data: {
                                    'product_id': listViewProductsRow.id,
                                    'name': listViewProductsRow.name,
                                    'description':
                                        listViewProductsRow.description,
                                    'photo_url': listViewProductsRow.photoUrl,
                                    'price': listViewProductsRow.price,
                                    'on_sale': listViewProductsRow.onSale,
                                    'category': listViewProductsRow.category,
                                    'quantity': listViewProductsRow.quantity,
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'id',
                                    currentUserUid,
                                  ),
                                );

                                context.pushNamed('Info_Produto');
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3.0,
                                      color: Color(0x411D2429),
                                      offset: Offset(0.0, 1.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 1.0, 1.0, 1.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            listViewProductsRow.photoUrl !=
                                                        null &&
                                                    listViewProductsRow
                                                            .photoUrl !=
                                                        ''
                                                ? listViewProductsRow.photoUrl!
                                                : 'https://images.unsplash.com/photo-1574914629385-46448b767aec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGF0dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                            width: 70.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 4.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listViewProductsRow.name,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF090F13),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 8.0, 0.0),
                                                  child: AutoSizeText(
                                                    listViewProductsRow
                                                        .description!
                                                        .maybeHandleOverflow(
                                                      maxChars: 70,
                                                      replacement: '…',
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF7C8791),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF57636C),
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 4.0, 8.0),
                                            child: Text(
                                              formatNumber(
                                                listViewProductsRow.price,
                                                formatType: FormatType.custom,
                                                currency: 'R\$ ',
                                                format: '###.##',
                                                locale: 'PT_BR',
                                              ),
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: const Color(0xFF4B39EF),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
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
                    FutureBuilder<List<ProductsRow>>(
                      future: ProductsTable().queryRows(
                        queryFn: (q) => q.eq(
                          'category',
                          'Bebidas Geladas',
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
                        List<ProductsRow> listViewProductsRowList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewProductsRowList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewProductsRow =
                                listViewProductsRowList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await ProductInfoTable().update(
                                  data: {
                                    'product_id': listViewProductsRow.id,
                                    'name': listViewProductsRow.name,
                                    'description':
                                        listViewProductsRow.description,
                                    'photo_url': listViewProductsRow.photoUrl,
                                    'price': listViewProductsRow.price,
                                    'on_sale': listViewProductsRow.onSale,
                                    'category': listViewProductsRow.category,
                                    'quantity': listViewProductsRow.quantity,
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'id',
                                    currentUserUid,
                                  ),
                                );

                                context.pushNamed('Info_Produto');
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3.0,
                                      color: Color(0x411D2429),
                                      offset: Offset(0.0, 1.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 1.0, 1.0, 1.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            listViewProductsRow.photoUrl !=
                                                        null &&
                                                    listViewProductsRow
                                                            .photoUrl !=
                                                        ''
                                                ? listViewProductsRow.photoUrl!
                                                : 'https://images.unsplash.com/photo-1574914629385-46448b767aec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGF0dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                            width: 70.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 4.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listViewProductsRow.name,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF090F13),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 8.0, 0.0),
                                                  child: AutoSizeText(
                                                    listViewProductsRow
                                                        .description!
                                                        .maybeHandleOverflow(
                                                      maxChars: 70,
                                                      replacement: '…',
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF7C8791),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF57636C),
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 4.0, 8.0),
                                            child: Text(
                                              formatNumber(
                                                listViewProductsRow.price,
                                                formatType: FormatType.custom,
                                                currency: 'R\$',
                                                format: '###.##',
                                                locale: 'pt_br',
                                              ),
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: const Color(0xFF4B39EF),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
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
                    FutureBuilder<List<ProductsRow>>(
                      future: ProductsTable().queryRows(
                        queryFn: (q) => q.eq(
                          'category',
                          'Cafés Especiais',
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
                        List<ProductsRow> listViewProductsRowList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewProductsRowList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewProductsRow =
                                listViewProductsRowList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await ProductInfoTable().update(
                                  data: {
                                    'product_id': listViewProductsRow.id,
                                    'name': listViewProductsRow.name,
                                    'description':
                                        listViewProductsRow.description,
                                    'photo_url': listViewProductsRow.photoUrl,
                                    'price': listViewProductsRow.price,
                                    'on_sale': listViewProductsRow.onSale,
                                    'category': listViewProductsRow.category,
                                    'quantity': listViewProductsRow.quantity,
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'id',
                                    currentUserUid,
                                  ),
                                );

                                context.pushNamed('Info_Produto');
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3.0,
                                      color: Color(0x411D2429),
                                      offset: Offset(0.0, 1.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 1.0, 1.0, 1.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            listViewProductsRow.photoUrl !=
                                                        null &&
                                                    listViewProductsRow
                                                            .photoUrl !=
                                                        ''
                                                ? listViewProductsRow.photoUrl!
                                                : 'https://images.unsplash.com/photo-1574914629385-46448b767aec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGF0dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                            width: 70.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 4.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listViewProductsRow.name,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF090F13),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 8.0, 0.0),
                                                  child: AutoSizeText(
                                                    listViewProductsRow
                                                        .description!
                                                        .maybeHandleOverflow(
                                                      maxChars: 70,
                                                      replacement: '…',
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF7C8791),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF57636C),
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 4.0, 8.0),
                                            child: Text(
                                              formatNumber(
                                                listViewProductsRow.price,
                                                formatType: FormatType.custom,
                                                currency: 'R\$ ',
                                                format: '###.##',
                                                locale: 'PT_BR',
                                              ),
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: const Color(0xFF4B39EF),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
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
                    FutureBuilder<List<ProductsRow>>(
                      future: ProductsTable().queryRows(
                        queryFn: (q) => q.eq(
                          'category',
                          'Doces e Lanches',
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
                        List<ProductsRow> listViewProductsRowList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewProductsRowList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewProductsRow =
                                listViewProductsRowList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await ProductInfoTable().update(
                                  data: {
                                    'product_id': listViewProductsRow.id,
                                    'name': listViewProductsRow.name,
                                    'description':
                                        listViewProductsRow.description,
                                    'photo_url': listViewProductsRow.photoUrl,
                                    'price': listViewProductsRow.price,
                                    'on_sale': listViewProductsRow.onSale,
                                    'category': listViewProductsRow.category,
                                    'quantity': listViewProductsRow.quantity,
                                  },
                                  matchingRows: (rows) => rows.eq(
                                    'id',
                                    currentUserUid,
                                  ),
                                );

                                context.pushNamed('Info_Produto');
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 3.0,
                                      color: Color(0x411D2429),
                                      offset: Offset(0.0, 1.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 8.0, 8.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 1.0, 1.0, 1.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            listViewProductsRow.photoUrl !=
                                                        null &&
                                                    listViewProductsRow
                                                            .photoUrl !=
                                                        ''
                                                ? listViewProductsRow.photoUrl!
                                                : 'https://images.unsplash.com/photo-1574914629385-46448b767aec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGF0dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                            width: 70.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 4.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listViewProductsRow.name,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF090F13),
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 8.0, 0.0),
                                                  child: AutoSizeText(
                                                    listViewProductsRow
                                                        .description!
                                                        .maybeHandleOverflow(
                                                      maxChars: 70,
                                                      replacement: '…',
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              const Color(0xFF7C8791),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.chevron_right_rounded,
                                              color: Color(0xFF57636C),
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 4.0, 8.0),
                                            child: Text(
                                              formatNumber(
                                                listViewProductsRow.price,
                                                formatType: FormatType.custom,
                                                currency: 'R\$ ',
                                                format: '###.##',
                                                locale: 'PT_BR',
                                              ),
                                              textAlign: TextAlign.end,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: const Color(0xFF4B39EF),
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
