import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_proj/models/flight/request_search_by_criteria.dart';
import 'package:flutter_proj/remote/services/flight_search/flight_search_service.dart';
import 'package:flutter_proj/remote/services/user_service.dart';
import 'package:flutter_proj/repositories/flight_search_repository.dart';
import 'package:flutter_proj/repositories/user_repository.dart';
import 'package:flutter_proj/routing/route_constants.dart';
import 'package:flutter_proj/screens/chatting/screen.dart';
import 'package:flutter_proj/screens/home/screen.dart';
import 'package:flutter_proj/screens/login/screen.dart';
import 'package:flutter_proj/screens/my_page/screen.dart';
import 'package:flutter_proj/screens/news/screen.dart';
import 'package:flutter_proj/screens/soc/flight/search_flight_result/cubit/search_flight_cubit.dart';
import 'package:flutter_proj/screens/soc/flight/search_flight_result/screen.dart';
import 'package:flutter_proj/screens/soc/policy_html/screen.dart';
import 'package:flutter_proj/screens/soc/policy_web_view/screen.dart';
import 'package:flutter_proj/screens/soc/screen.dart';
import 'package:flutter_proj/screens/social/friend_list/bloc/friend_list_bloc.dart';
import 'package:flutter_proj/screens/social/friend_list/screen.dart';
import 'package:flutter_proj/utils/dio_singleton.dart';
import 'package:flutter_proj/widgets/navigation_bottom.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final UserRepository _userRepository =
      UserRepository(UserService(DioSingleton.dio));
  static final FlightSearchRepository _flightSearchRepository =
      FlightSearchRepository(
          flightSearchService: FlightSearchService(DioSingleton.dio));

  static final appRouter = [
    GoRoute(
      path: RouteConstants.login.path,
      name: RouteConstants.login.name,
      builder: (context, state) => const LoginScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldNavigationBottom(
          navigationShell: navigationShell,
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteConstants.home.path,
              name: RouteConstants.home.name,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(routes: [
          GoRoute(
              path: RouteConstants.allProperties.path,
              name: RouteConstants.allProperties.name,
              builder: (context, state) => const SocScreen(),
              routes: [
                GoRoute(
                  path: RouteConstants.searchFlightResult.path,
                  name: RouteConstants.searchFlightResult.name,
                  builder: (context, state) {
                    return BlocProvider(
                      create: (context) =>
                          SearchFlightCubit(repository: _flightSearchRepository)
                            ..fetchSearchFlight(
                              requestModel: const RequestSearchByCriteria(
                                originLocationCode: "DEL",
                                destinationLocationCode: "BOM",
                                departureDate: "",
                                numOfAdults: 1,
                                numOfChildren: 0,
                                numOfInfants: 0,
                                currency: "USD",
                                sorting: "",
                              ),
                            ),
                      child: const SearchFlightResultScreen(),
                    );
                  },
                ),
                GoRoute(
                  path: RouteConstants.policyHtml.path,
                  name: RouteConstants.policyHtml.name,
                  builder: (context, state) => const PolicyHtmlScreen(),
                ),
                GoRoute(
                  path: RouteConstants.policyWebView.path,
                  name: RouteConstants.policyWebView.name,
                  builder: (context, state) => const PolicyWebView(),
                ),
              ]),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: RouteConstants.chatting.path,
            name: RouteConstants.chatting.name,
            // builder: (context, state) {
            //   return BlocProvider(
            //     create: (context) =>
            //         FriendListBloc(userRepository: _userRepository)
            //           ..add(GetFriendListEvent()),
            //     child: const FriendListScreen(),
            //   );
            // },
            builder: (context, state) => const ChattingScreen(),
          ),
        ]),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteConstants.news.path,
              name: RouteConstants.news.name,
              builder: (context, state) => const NewsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouteConstants.myPage.path,
              name: RouteConstants.myPage.name,
              builder: (context, state) => const MyPageScreen(),
            ),
          ],
        ),
      ],
    ),
  ];
}
