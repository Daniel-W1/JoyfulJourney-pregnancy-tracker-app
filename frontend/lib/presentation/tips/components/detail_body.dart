import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/tip/bloc/tip_event.dart';
import 'package:frontend/domain/auth/auth.dart';
import 'package:frontend/domain/tip/tip.dart';
import 'package:frontend/local_data/shared_preferences/jj_shared_preferences_service.dart';
import 'package:frontend/presentation/core/Themes/light_theme.dart';

import '../../../application/tip/bloc/tip_bloc.dart';

import '../../../application/tip/bloc/tip_state.dart';
import '../../../infrastructure/tip/tip_api.dart';
import '../../../infrastructure/tip/tip_repository.dart';
import '../../core/utils/hex_color.dart';
import 'article_body.dart';
import 'article_image_holder.dart';
import 'tips_model.dart';
import 'tips_add_form.dart';

class DetailBody extends StatefulWidget {
  DetailBody({
    super.key,
    required this.tipsModel,
    required this.type,
  });
  final TipsModel tipsModel;
  final String type;

  @override
  State<DetailBody> createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
  final smallTxtStyle = TextStyle(color: HexColor("#6E798C"), fontSize: 11);
  bool get wantKeepAlive => true;
  final SharedPreferenceService service = SharedPreferenceService();
  bool isAdmin = false;

  @override
  void initState() {
    print("init");
    service.getAuthenticatedUser().then((value) => {
          if (value != null)
            {
              if (value.roles.contains('admin'))
                {
                  setState(() {
                    isAdmin = true;
                  })
                }
            }
        });

    BlocProvider.of<TipBloc>(context).add(TipEventGetByType(type: widget.type));
    
    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = LightTheme().getThemeData;
    final TipBloc tipBloc = BlocProvider.of<TipBloc>(context);

    return Scaffold(
      floatingActionButton: !isAdmin ? Container() : FloatingActionButton(
        onPressed: () => {
          showDialog(
              context: context,
              builder: (context) => CreateTipForm(
                    onCreate: (body, title) {
                      // Create a new Post instance with the given data
                      var tip = TipForm(
                        title: title,
                        body: body,
                        type: widget.type,
                      );

                      // Dispatch the PostListEventAddPost event with the created post
                      tipBloc.add(TipEventAdd(tipForm: tip));
                      if (tipBloc.state is TipStateSuccess) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Tip added'),
                          duration: const Duration(seconds: 1),
                        ));
                      } else if (tipBloc.state is TipStateFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Error'),
                          duration: const Duration(seconds: 1),
                        ));
                      }

                      // widget.tipBloc.add(TipEventGetByType(type: widget.type));

                      Navigator.of(context).pop();
                    },
                  ))
        },
        child: Icon(Icons.add),
      ),
      body: BlocConsumer<TipBloc, TipState>(
        listener: (context, state) {
          if (state is TipStateSuccess) {
            tipBloc.add(TipEventGetByType(type: widget.type));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Tip added'),
              duration: const Duration(seconds: 1),
            ));
          } else if (state is TipStateDeleted) {
            tipBloc.add(TipEventGetByType(type: widget.type));
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Tip deleted'),
              duration: const Duration(seconds: 1),
            ));
          }
        },
        builder: (context, state) {
          return BlocBuilder<TipBloc, TipState>(
            builder: (context, state) {
              if (state is TipStateInitial || state is TipStateLoading) {
                return Container(
                    height: MediaQuery.of(context).size.height - 70,
                    child: Center(child: const CircularProgressIndicator()));
              } else if (state is TipStateSuccessMultiple) {
                List<TipDomain> tips = state.tips.reversed.toList();
                return ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 16,
                        ),
                    itemCount: tips.length,
                    itemBuilder: (context, index) {
                      TipDomain tip = tips[index];
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          height: 370,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: themeData.colorScheme.secondary,
                              boxShadow: [
                                BoxShadow(
                                    color: themeData.colorScheme.shadow,
                                    blurRadius: 10,
                                    spreadRadius: 4,
                                    offset: const Offset(0, 10))
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              // image mini card
                              Stack(
                                children: [
                                  ImageHolder(widget: widget),
                                   isAdmin ? Positioned(
                                    top: 10,
                                    right: 10,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ) ,
                                      onPressed: () {
                                        tipBloc.add(
                                            TipEventDelete(tipId: tip.id!));
                                      },
                                    ),
                                  ) : Container(),
                                  // Edit button
                                  isAdmin ? Positioned(
                                    top: 10,
                                    left: 10,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.edit,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => CreateTipForm(
                                                  initialBody: tip.body,
                                                  initialTitle: tip.title,
                                                  mode: 'Update',
                                                  onCreate: (body, title) {
                                                    // Create a new Post instance with the given data
                                                    var tipForm = TipForm(
                                                      title: title,
                                                      body: body,
                                                      type: widget.type,
                                                    );

                                                    // Dispatch the PostListEventAddPost event with the created post
                                                    tipBloc.add(TipEventUpdate(
                                                        tipForm: tipForm,
                                                        tipId: tip.id!));
                                                    if (tipBloc.state
                                                        is TipStateSuccess) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                              SnackBar(
                                                        content:
                                                            Text('Tip updated'),
                                                        duration:
                                                            const Duration(
                                                                seconds: 1),
                                                      ));
                                                    } else if (tipBloc.state
                                                        is TipStateFailure) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                              SnackBar(
                                                        content: Text('Error'),
                                                        duration:
                                                            const Duration(
                                                                seconds: 1),
                                                      ));
                                                    }
                                                    // widget.tipBloc.add(TipEventGetByType(type: widget.type));
                                                    Navigator.of(context).pop();
                                                  },
                                                ));
                                      },
                                    ),
                                  ) : Container()
                                ],
                              ),

                              // ImageHolder(widget: widget),
                              // media and date
                              ArticleBody(
                                smallTxtStyle: smallTxtStyle,
                                title: tip.title,
                                body: tip.body,
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              } else if (state is TipStateFailure) {
                return Scaffold(
                  body: Center(child: Text(state.failure.toString())),
                );
              } else if (state is TipStateSuccess) {
                return Container();
              }

              return Scaffold(
                body: Center(child: Text("I'm here")),
              );
            },
          );
        },
      ),
    );
  }
}
