import 'package:canary_farm/data/repository/auth_repository.dart';
import 'package:canary_farm/data/repository/get_all_burung_tersedia_repository.dart';
import 'package:canary_farm/data/repository/profile_buyer_repository.dart';
import 'package:canary_farm/presentation/auth/bloc/login/bloc/login_bloc.dart';
import 'package:canary_farm/presentation/auth/bloc/register/bloc/register_bloc.dart';
import 'package:canary_farm/presentation/bloc/get_all_burung_tersedia/bloc/get_burung_tersedia_bloc.dart';
import 'package:canary_farm/presentation/buyer/profile/bloc/profile_buyer_bloc.dart';
import 'package:canary_farm/service/service_http_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          LoginBloc(authRepository:AuthRepository(ServiceHttpClient()))
          ),
        BlocProvider(
          create: (context) =>
          RegisterBloc(authRepository:AuthRepository(ServiceHttpClient()))
          ),
        BlocProvider(
          create: (context) =>
          ProfileBuyerBloc(profileBuyerRepository: ProfileBuyerRepository(ServiceHttpClient()))
          ),
        BlocProvider(
          create: (context) => GetBurungTersediaBloc(GetAllBurungTersediaRepository(ServiceHttpClient())))
      ], 
      child: MaterialApp(
        title: 'flutter demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
        ),
        home: BlocBuilder<SubjectBloc, SubjectState>(
          builder: (context, state) {
            return const Splashscreen();
          },
        ),
      ));
  }
}
