import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/auth/changepass/view/changepass_screen.dart';
import 'package:flutter_application_1/presentation/auth/forgot/view/forgot_screen.dart';
import 'package:flutter_application_1/presentation/auth/login/view/login_screen.dart';
import 'package:flutter_application_1/presentation/auth/otp/view/otp_screen.dart';
import 'package:flutter_application_1/presentation/auth/signup/view/signup_screen.dart';
import 'package:flutter_application_1/presentation/boardcast/view/add_people.dart';
import 'package:flutter_application_1/presentation/boardcast/view/create_channel.dart';
import 'package:flutter_application_1/presentation/boardcast/view/my_channels.dart';
import 'package:flutter_application_1/presentation/boardcast/view/public_channels.dart';
import 'package:flutter_application_1/presentation/chat/view/chat_screen.dart';
import 'package:flutter_application_1/presentation/chat/view/group_chat.dart';
import 'package:flutter_application_1/presentation/chat/view/group_screen.dart';
import 'package:flutter_application_1/presentation/chat/view/message_screen.dart';
import 'package:flutter_application_1/presentation/home/view/home_screen.dart';
import 'package:flutter_application_1/presentation/mainscreen/view/main_screen.dart';
import 'package:flutter_application_1/presentation/profile/edit_profile.dart';
import 'package:flutter_application_1/presentation/boardcast/view/broadcast_channel.dart';
import 'package:flutter_application_1/presentation/profile/view/profile_screen.dart';
import 'package:flutter_application_1/presentation/profile/view/profile_settings.dart';
import 'package:flutter_application_1/presentation/profile/view/social_link.dart';
import 'package:flutter_application_1/presentation/profile/view/subscriber_screen.dart';
import 'package:flutter_application_1/presentation/search_profile/search_user_profile.dart';
import 'package:flutter_application_1/presentation/search_profile/view/search_profile.dart';
import 'package:flutter_application_1/presentation/splash/splash_screen.dart';
import 'package:flutter_application_1/presentation/subscription/view/current_plan.dart';
import 'package:flutter_application_1/presentation/subscription/view/membership_screen.dart';
import 'package:flutter_application_1/presentation/subscription/view/payment_method.dart';
import 'package:flutter_application_1/presentation/subscription/view/payment_summary.dart';
import 'package:flutter_application_1/presentation/video/view/video_screen.dart';

class Routes {
  static const String splashRoute = "/splash";
  static const String loginRoute = "/loginRoute";
  static const String signupRoute = "/signupRoute";
  static const String forgotRoute = "/forgotRoute";
  static const String otpRoute = "/otpRoute";
  static const String changepassRoute = "/changepassRoute";
  static const String mainScreenRoute = "/mainScreenRoute";
  static const String membershipRoute = "/membershipRoute";
  static const String currentPlanRoute = "/currentPlanRoute";
  static const String paymentMethod = "/paymentMethod";
  static const String paymentSummary = "/paymentSummary";
  static const String profileRoute = "/profileRoute";
  static const String editProfileRoute = "/editProfileRoute";
  static const String socialLinkRoute = "/socialLinkRoute";
  static const String subscriberScreen = "/subscriberScreen";
  static const String profileSettings = "/profileSettings";
  static const String homeRoute = "/homeRoute";
  static const String videoScreen = "/videoScreen";
  static const String searchProfile = "/searchProfile";
  static const String searchUserProfile = "/searchUserProfile";
  static const String broadcastChannal = "/broadcastChannal";
  static const String myChannels = "/myChannels";
  static const String publicChannels = "/publicChannels";
  static const String createChannel = "/createChannel";
  static const String addPeople = "/addPeople";
  static const String chatRoute = "/chatRoute";
  static const String massageRoute = "/massageRoute";
  static const String groupChat = "/groupChat";
  static const String groupMessages = "/groupMessages";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.signupRoute:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case Routes.forgotRoute:
        return MaterialPageRoute(builder: (_) => const ForgotScreen());
      case Routes.otpRoute:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      case Routes.changepassRoute:
        return MaterialPageRoute(builder: (_) => const ChangepassScreen());
      case Routes.mainScreenRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.membershipRoute:
        return MaterialPageRoute(builder: (_) => const MembershipScreen());
      case Routes.currentPlanRoute:
        return MaterialPageRoute(builder: (_) => const CurrentPlan());
      case Routes.paymentMethod:
        return MaterialPageRoute(builder: (_) => const PaymentMethod());
      case Routes.paymentSummary:
        return MaterialPageRoute(builder: (_) => const PaymentSummary());
      case Routes.profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.editProfileRoute:
        return MaterialPageRoute(builder: (_) => const EditProfile());
      case Routes.socialLinkRoute:
        return MaterialPageRoute(builder: (_) => const SocialLink());
      case Routes.subscriberScreen:
        return MaterialPageRoute(builder: (_) => const SubscriberScreen());
      case Routes.profileSettings:
        return MaterialPageRoute(builder: (_) => const ProfileSettings());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.videoScreen:
        return MaterialPageRoute(builder: (_) => const VideoScreen());
      case Routes.searchProfile:
        return MaterialPageRoute(builder: (_) => const SearchProfile());
      case Routes.searchUserProfile:
        return MaterialPageRoute(builder: (_) => const SearchUserProfile());
      case Routes.broadcastChannal:
        return MaterialPageRoute(builder: (_) => const BroadcastChannel());
      case Routes.myChannels:
        return MaterialPageRoute(builder: (_) => const MyChannels());
      case Routes.publicChannels:
        return MaterialPageRoute(builder: (_) => const PublicChannels());
      case Routes.createChannel:
        return MaterialPageRoute(builder: (_) => const CreateChannel());
      case Routes.addPeople:
        return MaterialPageRoute(builder: (_) => const AddPeople());
      case Routes.chatRoute:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case Routes.massageRoute:
        return MaterialPageRoute(builder: (_) => const MessageScreen());
      case Routes.groupChat:
        return MaterialPageRoute(builder: (_) => const GroupChat());
      case Routes.groupMessages:
        return MaterialPageRoute(builder: (_) => const GroupScreen());

      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(body: Center(child: Text('NO ROUTES FOUND'))),
    );
  }
}
