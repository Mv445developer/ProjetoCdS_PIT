import '/components/user_account/user_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'pedidos_model.dart';
export 'pedidos_model.dart';

class PedidosWidget extends StatefulWidget {
  const PedidosWidget({super.key});

  @override
  _PedidosWidgetState createState() => _PedidosWidgetState();
}

class _PedidosWidgetState extends State<PedidosWidget>
    with TickerProviderStateMixin {
  late PedidosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PedidosModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
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
              'PEDIDOS',
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle: FlutterFlowTheme.of(context).titleMedium,
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                        tabs: const [
                          Tab(
                            text: 'Em Aberto',
                          ),
                          Tab(
                            text: 'Concluídos',
                          ),
                        ],
                        controller: _model.tabBarController,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: const [],
                          ),
                          ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: const [],
                          ),
                        ],
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
  }
}
