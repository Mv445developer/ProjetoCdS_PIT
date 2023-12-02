import '/auth/supabase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/components/cart_add/cart_add_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'info_produto_model.dart';
export 'info_produto_model.dart';

class InfoProdutoWidget extends StatefulWidget {
  const InfoProdutoWidget({super.key});

  @override
  _InfoProdutoWidgetState createState() => _InfoProdutoWidgetState();
}

class _InfoProdutoWidgetState extends State<InfoProdutoWidget> {
  late InfoProdutoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoProdutoModel());
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

    return FutureBuilder<List<ProductInfoRow>>(
      future: ProductInfoTable().querySingleRow(
        queryFn: (q) => q.eq(
          'id',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ProductInfoRow> infoProdutoProductInfoRowList = snapshot.data!;
        final infoProdutoProductInfoRow =
            infoProdutoProductInfoRowList.isNotEmpty
                ? infoProdutoProductInfoRowList.first
                : null;
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
                  infoProdutoProductInfoRow!.name!,
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
                background: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/coffe_4.webp',
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.00, 0.00),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          infoProdutoProductInfoRow.photoUrl!,
                          width: 367.0,
                          height: 268.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                    ],
                  ),
                  Container(
                    width: 365.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Text(
                      infoProdutoProductInfoRow.description!,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).accent4,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RatingBar.builder(
                        onRatingUpdate: (newValue) =>
                            setState(() => _model.ratingBarValue = newValue),
                        itemBuilder: (context, index) => Icon(
                          Icons.star_rounded,
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                        direction: Axis.horizontal,
                        initialRating: _model.ratingBarValue ??= 1.0,
                        unratedColor: FlutterFlowTheme.of(context).accent3,
                        itemCount: 5,
                        itemSize: 20.0,
                        glowColor: FlutterFlowTheme.of(context).tertiary,
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).accent4,
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 160.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).secondaryText
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20.0,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20.0,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                            count: _model.countControllerValue ??= 0,
                            updateCount: (count) => setState(
                                () => _model.countControllerValue = count),
                            stepSize: 1,
                          ),
                        ),
                        SizedBox(
                          height: 100.0,
                          child: VerticalDivider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).accent4,
                          ),
                        ),
                        Text(
                          formatNumber(
                            infoProdutoProductInfoRow.price!,
                            formatType: FormatType.custom,
                            currency: 'R\$ ',
                            format: '###.##',
                            locale: 'pt_br',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).accent4,
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await ShpoCartTable().insert({
                          'created_at':
                              supaSerialize<DateTime>(getCurrentTimestamp),
                          'product_id': infoProdutoProductInfoRow.productId,
                          'name': infoProdutoProductInfoRow.name,
                          'description': infoProdutoProductInfoRow.description,
                          'photo_url': infoProdutoProductInfoRow.photoUrl,
                          'price': infoProdutoProductInfoRow.onSale == true
                              ? infoProdutoProductInfoRow.salesPrice
                              : infoProdutoProductInfoRow.price,
                          'category': infoProdutoProductInfoRow.category,
                          'user_id': currentUserUid,
                          'select_qtd': _model.countControllerValue,
                          'total_price':
                              infoProdutoProductInfoRow.onSale == true
                                  ? (infoProdutoProductInfoRow.salesPrice! *
                                      _model.countControllerValue!.toDouble())
                                  : (infoProdutoProductInfoRow.price! *
                                      _model.countControllerValue!.toDouble()),
                        });

                        await CartRecord.collection
                            .doc()
                            .set(createCartRecordData(
                              name: infoProdutoProductInfoRow.name,
                              description:
                                  infoProdutoProductInfoRow.description,
                              price: infoProdutoProductInfoRow.price,
                              createdAt: getCurrentTimestamp,
                              quantity: infoProdutoProductInfoRow.quantity,
                              totalPrice: infoProdutoProductInfoRow.price! *
                                  _model.countControllerValue!.toDouble(),
                              photoUrl: infoProdutoProductInfoRow.photoUrl,
                              category: infoProdutoProductInfoRow.category,
                              productId: infoProdutoProductInfoRow.id,
                              userId: currentUserUid,
                            ));
                        setState(() {
                          FFAppState().soma = FFAppState().soma +
                              infoProdutoProductInfoRow.price! *
                                  _model.countControllerValue!.toDouble();
                        });
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          isDismissible: false,
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
                                child: const CartAddWidget(),
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));

                        await Future.delayed(const Duration(milliseconds: 850));
                        Navigator.pop(context);
                      },
                      text: 'Adicionar ao Carrinho',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF0DEFE0),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF0E0000),
                                  fontWeight: FontWeight.bold,
                                ),
                        elevation: 5.0,
                        borderSide: const BorderSide(
                          color: Color(0xFF0E0000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
