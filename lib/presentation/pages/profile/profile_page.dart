import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth/auth_bloc.dart';
import '../../../application/auth/user/user_cubit.dart';
import '../../../injection.dart';
import '../../core/widgets/failure_viewer.dart';
import '../../router/app_router.gr.dart';

class ProfilePage extends StatefulWidget implements AutoRouteWrapper {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();

  @override
  Widget wrappedRoute(_) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(
          create: (_) => getIt<UserCubit>()..load(),
        ),
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>(),
        ),
      ],
      child: this,
    );
  }
}

class _ProfilePageState extends State<ProfilePage> {
  logout() {
    context.read<AuthBloc>().add(const AuthEvent.logout());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) => state.whenOrNull(
          logoutSuccess: () {
            context.router.replace(const LoginPageRoute());
            return null;
          },
          logoutFailed: (failure) {
            return null;
          },
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<UserCubit, UserState>(
            builder: (context, state) => state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              loadFailed: (f) => FailureViewer(failure: f),
              loaded: (user) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person),
                        title: Text(user.name),
                      ),
                      ListTile(
                        leading: const Icon(Icons.email),
                        title: Text(user.email),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListTile(
                        title: const Text('Sair da conta'),
                        trailing: IconButton(
                            onPressed: logout,
                            icon: const Icon(
                              Icons.logout,
                              color: Colors.red,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
