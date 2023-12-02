import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/user_account/user_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'home_main_model.dart';
export 'home_main_model.dart';

class HomeMainWidget extends StatefulWidget {
  const HomeMainWidget({super.key});

  @override
  _HomeMainWidgetState createState() => _HomeMainWidgetState();
}

class _HomeMainWidgetState extends State<HomeMainWidget> {
  late HomeMainModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeMainModel());
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
          title: Align(
            alignment: const AlignmentDirectional(-1.00, 0.00),
            child: Text(
              'LA MAISON CAFÉ',
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
                  'assets/images/caffe.webp',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).accent4,
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 180.0,
                child: CarouselSlider(
                  items: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://cqsmjfypoovihwdkrbbu.supabase.co/storage/v1/object/sign/Photos/Coffe_shop/photo_1.jpg?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJQaG90b3MvQ29mZmVfc2hvcC9waG90b18xLmpwZyIsImlhdCI6MTcwMTMwNTQ1NCwiZXhwIjo0ODIzMzY5NDU0fQ.FYZRRF8V2Bh6AMhzE-ybu8ex2OUKpNgR3AF1Z4XLoFc&t=2023-11-30T00%3A50%3A53.904Z',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://cqsmjfypoovihwdkrbbu.supabase.co/storage/v1/object/sign/Photos/Coffe_shop/photo_2.webp?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJQaG90b3MvQ29mZmVfc2hvcC9waG90b18yLndlYnAiLCJpYXQiOjE3MDEzMDU0ODUsImV4cCI6NDgyMzM2OTQ4NX0.IaCVpweeZ_p0HakPpr-RBV7FFbYp0ldUdhB9V0kG2s0&t=2023-11-30T00%3A51%3A24.724Z',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://cqsmjfypoovihwdkrbbu.supabase.co/storage/v1/object/sign/Photos/Coffe_shop/photo_3.webp?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJQaG90b3MvQ29mZmVfc2hvcC9waG90b18zLndlYnAiLCJpYXQiOjE3MDEzMDU0OTgsImV4cCI6NDgyMzM2OTQ5OH0.6d5KCA14pVEmxxag0LOnOpLTX156lruLpHDbBzJL5RM&t=2023-11-30T00%3A51%3A38.467Z',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://cqsmjfypoovihwdkrbbu.supabase.co/storage/v1/object/sign/Photos/Coffe_shop/photo_4.webp?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJQaG90b3MvQ29mZmVfc2hvcC9waG90b180LndlYnAiLCJpYXQiOjE3MDEzMDU1MTAsImV4cCI6NDgyMzM2OTUxMH0.LLgK1JMrLhjAnl5enkrtrIOHZ2btDo-hHW0lyXtEBeo&t=2023-11-30T00%3A51%3A50.454Z',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                  carouselController: _model.carouselController ??=
                      CarouselController(),
                  options: CarouselOptions(
                    initialPage: 1,
                    viewportFraction: 0.5,
                    disableCenter: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.25,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayInterval: const Duration(milliseconds: (800 + 400)),
                    autoPlayCurve: Curves.linear,
                    pauseAutoPlayInFiniteScroll: true,
                    onPageChanged: (index, _) =>
                        _model.carouselCurrentIndex = index,
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Container(
                decoration: const BoxDecoration(),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Destaques do Dia',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              FutureBuilder<List<ProductsRow>>(
                future: ProductsTable().queryRows(
                  queryFn: (q) => q.is_(
                    'on_sale',
                    true,
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
                  List<ProductsRow> listViewProductsRowList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
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
                              'description': listViewProductsRow.description,
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
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      listViewProductsRow.photoUrl != null &&
                                              listViewProductsRow.photoUrl != ''
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
                                    padding: const EdgeInsetsDirectional.fromSTEB(
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
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: const Color(0xFF090F13),
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 8.0, 0.0),
                                            child: AutoSizeText(
                                              listViewProductsRow.description!
                                                  .maybeHandleOverflow(
                                                maxChars: 70,
                                                replacement: '…',
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Icon(
                                        Icons.chevron_right_rounded,
                                        color: Color(0xFF57636C),
                                        size: 24.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 4.0, 8.0),
                                      child: Text(
                                        formatNumber(
                                          listViewProductsRow.price,
                                          formatType: FormatType.custom,
                                          currency: 'R\$ ',
                                          format: '###.##',
                                          locale: 'pt_br',
                                        ),
                                        textAlign: TextAlign.end,
                                        style: FlutterFlowTheme.of(context)
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
      ),
    );
  }
}
